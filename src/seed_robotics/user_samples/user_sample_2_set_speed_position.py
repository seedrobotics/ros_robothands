#!/usr/bin/env python3

# User sample to set target position and target speed to a list of joints. Sample for a RH8D Right Hand

import rospy
import std_msgs.msg
from seed_robotics.msg import *
import time

# Initialize a ROS Node
rospy.init_node('Joint_Speed_Position_Setter', anonymous = True)
# Initialize a Publisher to the 'speed_position' Topic. This must be the name of the topic so that the data can be processed
# The publisher will publish JointListSetSpeedPos messages
pub = rospy.Publisher('R_speed_position', JointListSetSpeedPos, queue_size = 10)

# Initialize a list of 6 JointSetSpeedPos messages that will be filled with data to send
joint_message_list = [JointSetSpeedPos() for i in range (8)]
# Initialize an instance of JointListSetSpeedPos, which will be the message to send once it is filled with the wanted speed and position for each joint
message_to_send = JointListSetSpeedPos()
# Declaring a list to store the names of the joints we want to send command to
joint_names = ['r_w_rotation','r_w_flexion','r_w_adduction','r_th_adduction','r_th_flexion','r_ix_flexion','r_middle_flexion','r_ring_ltl_flexion']
# Declaring a list to store the different target position we want for each joint
# Note : Target position must be a value between 0 and 4095
target_position_list = [1000, 2048, 2000, 0, 0, 0, 0, 0]
# Declaring a list to store the different target speed we want for each joint
# Note : Target speed must be a value between 0 and 1023
target_speed_list = [0, 100, 200, 300, 400, 500, 0, 0]
# Assign the name, target position and target speed of the joints to each JointSetSpeedPos message in the joint_message_list
for name, position, speed, joint in zip(joint_names, target_position_list, target_speed_list, joint_message_list):
    joint.name = name
    joint.target_pos = position
    joint.target_speed = speed

# Now that the list of JointSetSpeedPos messages is filled, we can fill the JointListSetSpeedPos nessage with it
message_to_send.joints = joint_message_list

# Sleep 1 second for ROS to initialize
time.sleep(1)

#Publish the message
pub.publish(message_to_send)
