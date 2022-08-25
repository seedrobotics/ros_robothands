#!/usr/bin/env python3

# User sample to set the shutdown conditions on a given joint of a Right Hand
# The shutdown conditions of joint are temperature and overload
# By default, temperature and overload are shutdown conditions
# In this sample, we will disable them

import rospy
import std_msgs.msg
from seed_robotics.msg import *
import time

# Define values for enabling/disabling shutdown condition
ENABLE_CONDITION = True
DISABLE_CONDITION = False

# Initialize a ROS Node
rospy.init_node('Set_Shutdown_Conditions', anonymous = True)

# Initialize a Publisher to the 'shutdown_condition' Topic. This must be the name of the topic so that the data can be processed
# The publisher will publish SetShutdownCond messages
pub = rospy.Publisher('R_shutdown_condition', SetShutdownCond, queue_size = 10)

# Declare the joint's name on which you want to set the shutdown conditions
name = 'r_ring_ltl_flexion'

# Initialize an instance of SetShutdownCond, which will be the message to send once it is filled with the wanted joint name and the values for the wanted shutdown conditions
message_to_send = SetShutdownCond()

# Fill the fields of the SetShutdownCond message
message_to_send.name = name
message_to_send.temperature = DISABLE_CONDITION
message_to_send.overload = DISABLE_CONDITION

# Sleep 1 second for ROS to initialize
time.sleep(1)

#Publish the message
pub.publish(message_to_send)
