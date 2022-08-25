#!/usr/bin/env python3

# User sample code that gets data from a Right Hand's main board.

import rospy
import std_msgs.msg
from seed_robotics.msg import *

lone_main_board_list = []

def mainBoardCallback(main_board_data):
    lone_main_board_list = main_board_data.boards    #Store the list of LoneMainBoard messages so that it's possible to compute it afterwards if needed
    print(main_board_data.header)
    print("Number of main boards : %d" % main_board_data.length)
    for board in main_board_data.boards:
        print("Board name : %s" % board.name)
        print("Board ID : %d" % board.id)
        print("Palm IR Sensor value : %d" % board.palm_IR_sensor)
        print("First capacitive sensor value : %d" % board.capacitive_sensor_1)
        print("Second capacitive sensor value : %d" % board.capacitive_sensor_2)

# Initialize a ROS Node
rospy.init_node('Main_boards_listener', anonymous = True)
# Subscribe to the Main_Boards Topic to receive AllMainBoards messages that will be processed by the mainBoardCallback function
# Note that the Topic name MUST be 'Main_Boards'
rospy.Subscriber('R_Main_Boards', AllMainBoards, mainBoardCallback)

# Keep the node listening until the program is manually stopped
rospy.spin()
