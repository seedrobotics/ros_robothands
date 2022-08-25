#!/usr/bin/env python3

# User sample to clear the hardware error on a given joint on a Right Hand

import rospy
import std_msgs.msg
from seed_robotics.msg import *
import time

# Initialize a ROS Node
rospy.init_node('Clear_Joint_Error', anonymous = True)
# Initialize a Publisher to the 'clear_error' Topic. This must be the name of the topic so that the data can be processed
# The publisher will publish ClearHWError messages
pub = rospy.Publisher('R_clear_error', ClearHWError, queue_size = 10)
# Declare the joint's name on which you want to clear the hardware error
name = 'r_ring_ltl_flexion'
# Initialize an instance of ClearHWError, which will be the message to send once it is filled with the wanted joint name
message_to_send = ClearHWError()
# Fill the 'name' field on the ClearHWError message
message_to_send.name = name

# Sleep 1 second for ROS to initialize
time.sleep(1)

#Publish the message
pub.publish(message_to_send)
