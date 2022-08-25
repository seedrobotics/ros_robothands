#!/usr/bin/env python3

# User sample code that gets data from each joint and display them continuously. Sample example for the use of a single Right Hand

import rospy
import std_msgs.msg
from seed_robotics.msg import *

lone_joint_list = []

def jointsCallback(joints_data):
    lone_joint_list = joints_data.joints    #Store the list of LoneJoint messages so that it's possible to compute it afterwards if needed
    print(joints_data.header)
    print("Number of joints : %d" % joints_data.length)
    for joint in joints_data.joints:
        print("Joint name : %s" % joint.name)
        print("Joint ID : %d" % joint.bus_id)
        print("Joint stiffness is : %d" % joint.stiffness)
        print("Stress Level : %d" % joint.stress_level)
        print("Target Position : %d" % joint.target_position)
        print("Target Speed : %d" % joint.target_speed)
        print("Torque Limit : %d" % joint.torque_limit)
        print("Present Position : %d" % joint.present_position)
        print("Present Speed : %d" % joint.present_speed)
        print("Temperature : %d" % joint.temperature)
        print("Moving : %d" % joint.moving)
        print("Hardware Error Condition : %d" % joint.HW_error_condition)
        print("Present Current : %d" % joint.current)

# Initialize a ROS Node
rospy.init_node('Joints_listener', anonymous = True)
# Subscribe to the Joints Topic to receive AllJoints messages that will be processed by the jointsCallback function
# Note that the Topic name MUST be 'R_Joints' if you are using a Right Hand
rospy.Subscriber("R_Joints", AllJoints, jointsCallback)


# Keep the node listening until the program is manually stopped
rospy.spin()
