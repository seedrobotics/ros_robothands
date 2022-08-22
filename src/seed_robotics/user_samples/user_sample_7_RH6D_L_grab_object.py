#!/usr/bin/env python3

# This sample is done for a RH6D Left Hand, on a RH8D you must also manage the middle finger.
# You can adapt it to a right Hand by changing the 'l' by a 'r' on joint names
# User sample code High Level Logic : When an object is close to the Hand, the fingers close to grab the object. Once it's grabbed, the finger open themselves 5seconds later
# Several things are done here :
# - Get real-time data for each joint
# - Get real-time data from the IR sensor in the palm of the hand
# - Send the instruction to close the index, the ring and the little fingers
# - Send the instruction to close the thumb
# - Continuously checking if any joint is too stressed, i.e. if its current goes above the current limit hardcoded to 300mA
# - If a joint is too stressed, send an instruction to set its target position to its present position
# - When every joint have their present position equal to their target position -> open the finger and let the object go

import rospy
import std_msgs.msg
from seed_robotics.msg import *
import time

# Hardcoded value of the current limit, if a joint goes above that limit it must stop forcing
CURRENT_LIMIT = 300 #mAmp

# Control class to be able to change the IR sensor value in the callback function
# Including 2 flags to control the main loop
class Control:
    def __init__(self):
        self.IR_sensor_value = 254
        self.start_flag      = False
        self.step2_flag      = False


# Initialize an instance of the Control class
control = Control()

# Initialize variables to contunuisly store to incoming informations
joint_list = [LoneJoint() for i in range (4)] # We will only need informations about 4 joints : l_th_adduction, l_th_flexion, l_ix_flexion, l_ring_ltl_flexion

# Initialize variables and structures to send messages
names_step_1            = ['l_th_adduction','l_ix_flexion','l_ring_ltl_flexion']                # Name of the joints we want to move first
target_positions_step_1 = [4095, 4095, 4095]                                                    # Maximum position value : closed position
target_speeds_step_1    = [0, 50, 50]                                                           # Speed 0 : Highest speed. Speed 50 : Low speed

names_step_2            = ['l_th_flexion']                                                      # Name of the joint to move on the 2nd step of the hand closing
target_positions_step_2 = [4095]                                                                # Maximum position value : closed position
target_speeds_step_2    = [50]                                                                  # Speed 50 : Low speed

names_step_3            = ['l_th_adduction','l_th_flexion','l_ix_flexion','l_ring_ltl_flexion'] # Names of all the joints to move. Step 3 will be to open each finger
target_positions_step_3 = [0, 0, 0, 0]                                                          # Minimum position value : open position
target_speeds_step_3    = [10, 10, 10, 10]                                                      # Speed 10 : very low speed

# Define a function to fill the message 'final_message' to send based on lists of names, target position values and target speed values
def buildSpeedPosMsg(names,target_positions,target_speeds):
    # Initialize a list of JointSetSpeedPos messages, the length of the number of joints we want to send instruction to
    joint_list = [JointSetSpeedPos() for i in range(len(names))]
    # Fill up that list with the informations about name, position and speed that are listed above
    for name, position, speed, joint in zip(names, target_positions, target_speeds, joint_list):
        joint.name = name
        joint.target_pos = position
        joint.target_speed = speed
    # Declare, fill up and return an instance of JointListSetSpeedPos message, ready to be sent
    final_message = JointListSetSpeedPos()
    final_message.joints = joint_list
    return final_message

# Callback function called when a AllJoints message is published.
# Will fill up the joint_list with each LoneJoint messages that are received that interests us. (i.e thumb adduction, thumb flexion, index flexion and ring/little flexion)
def jointsCallback(joints_data):
    for joint in joints_data.joints:
        if joint.name == 'l_th_adduction':
            joint_list[0] = joint
        if joint.name == 'l_th_flexion':
            joint_list[1] = joint
        if joint.name == 'l_ix_flexion':
            joint_list[2] = joint
        if joint.name == 'l_ring_ltl_flexion':
            joint_list[3] = joint

# Callback function called when a message about the main board is published
# Will update the value of the palm IR sensor
def mainBoardCallback(main_board_data):
    for board in main_board_data.boards:
        if board.name == "l_main_board":
            control.IR_sensor_value = board.palm_IR_sensor
    #print("IR Sensor value = %d" % IR_sensor_value)


# Initialize a ROS Node
rospy.init_node('User_Sample_Listener', anonymous = False)
# Subscribe to the Joints Topic to receive AllJoints messages that will be processed by the jointsCallback function
# Note that the Topic name MUST be 'Joints'
rospy.Subscriber("L_Joints", AllJoints, jointsCallback)
# Subscribe to the Main_Boards Topic to receive AllMainBoards messages that will be processed by the mainBoardCallback function
# Note that the Topic name MUST be 'Main_Boards'
rospy.Subscriber('L_Main_Boards', AllMainBoards, mainBoardCallback)
# Initialize a Publisher to the 'speed_position' Topic. This MUST be the name of the topic so that the data can be processed
# The publisher will publish JointListSetSpeedPos messages
pub = rospy.Publisher('L_speed_position', JointListSetSpeedPos, queue_size = 10)

# Define a function that takes a LoneJoint message instance in argument
# It will publish a message to that joint to set its target position to its present position
# The idea is to stop stressing the joint
def stopStressing(joint):
    # Getting the joint's present position
    target_pos = joint.present_position
    # Declare a list of 1 JointSetSpeedPos element
    joints = [JointSetSpeedPos()]
    # Fill the JointSetSpeedPos instance with joint's name, new target position and target_speed
    joints[0].name = joint.name
    joints[0].target_pos = target_pos
    joints[0].target_speed = -1         # If targert speed = -1, then the parameter will be ignored
    # Declare an instance of JointListSetSpeedPos that will be the message to send
    message = JointListSetSpeedPos()
    # Fill that message and publish it
    message.joints = joints
    pub.publish(message)

# Declaring a empty list to store future stressed joints
list_stressed_joints = []

# Sleeping for 1sec to let ROS initialize
time.sleep(1)

# Main Loop
while not rospy.is_shutdown():
    # If start flag is false, then try to do the first step
    if control.start_flag is False:
        # If the IR sensor value is below 20, then there is an object to grab -> do the first step
        if control.IR_sensor_value < 20:
            # Create the message to send that will close the index, ring and little finger. It will also rotate the thumb in prevision of the next step
            message = buildSpeedPosMsg(names_step_1,target_positions_step_1,target_speeds_step_1)
            print(message)
            pub.publish(message)
            # Setting start flag to True : first step is done
            control.start_flag = True
            # Sleep for 1sec to not interfere between messages
            time.sleep(1)
    # If start flag is true and step2_flag is false : time for step 2
    elif control.step2_flag is False:
        # Create the message to send that will close the thumb and publish it
        message = buildSpeedPosMsg(names_step_2,target_positions_step_2,target_speeds_step_2)
        print(message)
        pub.publish(message)
        # Setting step2_flag to True : step 2 is done
        control.step2_flag = True

    # Continuously check every joint's current to see if one's current is above the current limit.
    for joint in joint_list:
        #print("Current in Joint %s is : %d" % (joint.name,joint.current))
        if joint.current > CURRENT_LIMIT:
            # If current is above current limit and the joint has not been told to stop forcing yet :
            if not (joint.name in list_stressed_joints):
                # Set its target position to its current position
                stopStressing(joint)
                # Add the joint the the list_stressed_joints
                list_stressed_joints.append(joint.name)
                print(list_stressed_joints)

    # If every joints have received the command to set their target position to their present position
    if len(list_stressed_joints) >= 3:
        # Hold the object for 5 more seconds
        time.sleep(5)
        # Then build and send the message to open every finger
        message = buildSpeedPosMsg(names_step_3, target_positions_step_3, target_speeds_step_3)
        print(message)
        pub.publish(message)
        # Quit the script, mission accomplished.
        quit()
