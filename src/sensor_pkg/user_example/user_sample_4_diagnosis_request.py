#!/usr/bin/env python3

# This sample assumes you are using a Right Hand. If not, change the R_sensor_user_command Topic name to L_sensor_user_command
# User sample code that sends a command to request sensor diagnosis and prints the answer

import rospy
import std_msgs.msg
from sensor_pkg.msg import *
from rosgraph_msgs.msg import Log
import time

DESIRED_FREQUENCY = 20          #1Hz, can be changed with values between 1 and 50

# Defining the callback function for the rosout topic
def callback(log_data):
    # Here it will only print the 'msg' field of the message instead of the whole message (which contains Header etc...)
    print(log_data.msg)

# Initialize ros node
rospy.init_node('user_talker', anonymous = True)

# Initialize a publisher to sensor_user_command to be able to send command to the sensors
pub = rospy.Publisher('R_sensor_user_command', sensor_user_command, queue_size = 10)

# Subscribing to the rosout topic,Log messages will be read and the callback function will be called
rospy.Subscriber("rosout", Log, callback)

# Defining a sensor_user_command message to fill it with the needed Command
command = sensor_user_command()

# Setting the 'diagnosis' field to True
command.diagnosis_request = True

# Let 1s to ROS for the Node's initialization before publishing
time.sleep(1)

# Publish the command to the sensor_user_command topic. It will send a diagnosis request command.
pub.publish(command)

# Keeps the node listening until you stop the script manually
rospy.spin()
