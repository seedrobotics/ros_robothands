#!/usr/bin/env python3

# User sample to clear the stiffness on one or several joints on a Right Hand

import rospy
import std_msgs.msg
from seed_robotics.msg import *
import time

# Initialize a ROS Node
rospy.init_node('Set_Joints_Stiffness', anonymous = True)
# Initialize a Publisher to the 'stiffness' Topic. This must be the name of the topic so that the data can be processed
# The publisher will publish JointListStiffness messages
pub = rospy.Publisher('R_stiffness', JointListSetStiffness, queue_size = 10)
# We want to set stiffness on 6 joints, so here we initialize a list of 6 SetStiffness messsages
joint_message_list = [SetStiffness() for i in range (6)]
# Initialize an instance of JointListSetStiffness, which will be the message to send once it is filled with the list of SetStiffness messages
message_to_send = JointListSetStiffness()
# Declaring a list to store the names of the joints we want to send command to
joint_names = ['r_w_rotation','r_w_flexion','r_th_adduction','r_th_flexion','r_ix_flexion','r_ring_ltl_flexion']
# Declaring a list to store the different stiffness values we want for each joint
# Note : Stiffness value must be between 1 and 9
stiffness_values_list = [1, 9, 8, 4, 6, 7]
# Assign the name and stiffness value of the joints to each SetStiffness message in the joint_message_list
for name, stiffness, joint in zip(joint_names, stiffness_values_list, joint_message_list):
    joint.name = name
    joint.stiffness = stiffness

# Now that the list of SetStiffness messages is filled, we can fill the JointListSetStiffness message with it
message_to_send.joints = joint_message_list

# Sleep 1 second for ROS to initialize
time.sleep(1)

#Publish the message
pub.publish(message_to_send)
