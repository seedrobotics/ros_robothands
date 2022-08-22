#!/usr/bin/env python3

# This sample is done for a RH8D Right Hand
# Here we read the KEYFRAMES_IROS2019_RH8Donly.csv file that contains a list of commands to be sent to the joints
# The idea is to parse this file and send commands with delays between them (the delays are written in the file)
import rospy
import csv
import time
from seed_robotics.msg import *

# Initialize a ROS Node
rospy.init_node('CSV_commands', anonymous = True)
# Initialize a Publisher to the 'speed_position' Topic. This must be the name of the topic so that the data can be processed
# The publisher will publish JointListSetSpeedPos messages
pub = rospy.Publisher('R_speed_position', JointListSetSpeedPos, queue_size = 10)
# Initialize a list of 8 JointSetSpeedPos messages that will be filled with data to send
joint_message_list = [JointSetSpeedPos() for i in range (8)]
# Declaring a list to store the names of the joints we want to send command to
joint_names = ['r_w_rotation','r_w_adduction','r_w_flexion','r_th_adduction','r_th_flexion','r_ix_flexion','r_middle_flexion','r_ring_ltl_flexion']
# Declaring a list to be filled with the target positions read
target_position_list = []

# Define a function that will build a command message from lists of joint names, target positions and JointSetSpeedPos messages
def buildAndSendMsg(names,target_positions,message_list):
    # Go through every lists passed in argument and fill the message list
    for name, position, joint_message in zip(names,target_positions,message_list):
        joint_message.name = name
        joint_message.target_pos = position
        joint_message.target_speed = 0                  # Setting target speed to 0 = maximum speed
    # Declare a JointListSetSpeedPos message
    message_to_send = JointListSetSpeedPos()
    # Fill that message
    message_to_send.joints = message_list
    # Send the message
    pub.publish(message_to_send)
    # Print the message that has been sent
    print(message_to_send)
    return

# Open and read the csv file with the list of commands
with open('src/seed_robotics/user_samples/KEYFRAMES_IROS2019_RH8Donly.csv', 'r') as csv_file:
    reader = csv.reader(csv_file)
    # Go through each line in the csv file
    for row in reader:
        # Clear the target position list between each iteration
        target_position_list.clear()
        print(row)
        # If a line doesn't start with a 'K' ignore it
        if row[0] == 'K':
            for i in range(2,len(row)):
                # Last element is the time to wait between each send
                if i == 10:
                    wait_ms = row[i]
                else:
                    # Every other one is a target position
                    target_position_list.append(int(row[i]))
            print(target_position_list)
            buildAndSendMsg(joint_names,target_position_list,joint_message_list)
            time_sleep_s = int(wait_ms) * 0.001
            time.sleep(time_sleep_s)

    csv_file.close()
