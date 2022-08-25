#!/usr/bin/env python3

#*******************************************************************************
# Copyright 2021 ROBOTIS CO., LTD.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#*******************************************************************************

import os
import rospy
import time
import math

if os.name == 'nt':
    import msvcrt
    def getch():
        return msvcrt.getch().decode()
else:
    import sys, tty, termios
    fd = sys.stdin.fileno()
    old_settings = termios.tcgetattr(fd)
    def getch():
        try:
            tty.setraw(sys.stdin.fileno())
            ch = sys.stdin.read(1)
        finally:
            termios.tcsetattr(fd, termios.TCSADRAIN, old_settings)
        return ch

from dynamixel_sdk import *
from seed_robotics.msg import *
import std_msgs.msg


# Control table address and data lengths

ADDR_MODEL_NR                   = 0
LEN_MODEL_NR                    = 2
ADDR_FIRMWARE_VERSION           = 2
ADDR_BUS_ID                     = 3
ADDR_D                          = 26
ADDR_I                          = 27
ADDR_P                          = 28
ADDR_OL_FILTER_THRESHOLD        = 66
ADDR_GEARTRAIN_MODEL            = 102
ADDR_ELECTRONICS_MODEL          = 103
ADDR_PERMISSION                 = 23
LEN_PERMISSION                  = 1
PERMISSION_ENABLE               = 0
ADDR_TORQUE_ENABLE              = 24
ADDR_TARGET_POSITION            = 30
LEN_TARGET_POSITION             = 2
ADDR_TARGET_SPEED               = 32
LEN_TARGET_SPEED                = 2
ADDR_TORQUE_LIMIT               = 34
LEN_TORQUE_LIMIT                = 2
ADDR_PRESENT_POSITION           = 36
LEN_PRESENT_POSITION            = 2
ADDR_PRESENT_SPEED              = 38
LEN_PRESENT_SPEED               = 2
ADDR_TEMPERATURE                = 43
LEN_TEMPERATURE                 = 1
ADDR_MOVING                     = 46
LEN_MOVING                      = 1
ADDR_HW_ERROR_COND              = 47
LEN_HW_ERROR_COND               = 1
ADDR_OL_FILTER_VALUE            = 67
ADDR_SHUTDOWN_COND              = 18
LEN_SHUTDOWN_COND               = 1
DEFAULT_SHUTDOWN_COND           = 36
DISABLE_TEMP_COND               = 32
DISABLE_OL_COND                 = 4
DISABLE_OL_AND_TEMP             = 0
LEN_OL_FILTER_VALUE             = 1
ADDR_CURRENT                    = 68
LEN_CURRENT                     = 2
ADDR_CURRENT_LIMIT              = 71

# Main Board addresses
ADDR_PALM_IR_SENSOR             = 94
LEN_PALM_IR_SENSOR              = 2
ADDR_CAPACITIVE_SENSOR_1        = 98
ADDR_CAPACITIVE_SENSOR_2        = 100
LEN_CAPACITIVE_SENSOR           = 2

ADDR_START_SYNC_READ            = 30
LEN_SYNC_READ                   = 40

ADDR_START_SYNC_WRITE           = 30
LEN_SYNC_WRITE                  = 4

ADDR_SYNC_WRITE_STIFFNESS       = 26
LEN_SYNC_WRITE_STIFFNESS        = 3

ADDR_START_SYNC_READ_MAIN_BOARD = 94
LEN_SYNC_READ_MAIN_BOARD        = 8

# Protocol version
PROTOCOL_VERSION                = 2.0               # See which protocol version is used in the Dynamixel

# Initialize the ROS Node
rospy.init_node("seed_hand", anonymous = False)
name = rospy.get_name()
param_baud = name + "/baudrate"
param_port = name + "/port"
param_freq = name + "/frequency"
param_dict = name + "/joint_mapping"

try:
    LIGHT_MODE = rospy.get_param("/light_mode")
    rospy.loginfo("Light mode is : %s" % LIGHT_MODE)
except KeyError:
    rospy.loginfo("Could not find light mode parameter, setting to default (false)")
    LIGHT_MODE = False
    pass

if LIGHT_MODE:
    LEN_SYNC_READ = 10

try:
    PREFIX = rospy.get_param("/prefix")
    rospy.loginfo("Prefix is : %s" % PREFIX)
except KeyError:
    rospy.loginfo("Could not find prefix parameter, setting to default (R_)")
    PREFIX = "R_"
    pass

try:
    BAUDRATE = rospy.get_param(param_baud)
    rospy.loginfo("Baudrate is : %d" % BAUDRATE)
except KeyError:
    rospy.loginfo("Could not find baudrate parameter, setting to default (1000000)")
    BAUDRATE = 1000000
    pass

try:
    DEVICENAME = rospy.get_param(param_port)
    rospy.loginfo("Port name is : %s" % DEVICENAME)
except KeyError:
    rospy.loginfo("Could not find port parameter, setting to default port (/dev/ttyUSB0)")
    DEVICENAME = '/dev/ttyUSB0'
    pass

try:
    FREQUENCY = rospy.get_param(param_freq)
    rospy.loginfo("Working frequency is : %d" % FREQUENCY)
except KeyError:
    rospy.loginfo("Could not find frequency parameter, setting to default frequency (50)")
    FREQUENCY = 50
    pass

try:
    joint_dict = rospy.get_param(param_dict)
    rospy.loginfo(joint_dict)
except KeyError:
    rospy.logerr("Could not find joint mapping dictionary : package will only work with joints IDs")
    pass


TORQUE_ENABLE               = 1                 # Value for enabling the torque
TORQUE_DISABLE              = 0                 # Value for disabling the torque
DXL_MINIMUM_POSITION_VALUE  = 0               # Dynamixel will rotate between this value
DXL_MAXIMUM_POSITION_VALUE  = 4095            # and this value (note that the Dynamixel would not move when the position value is out of movable range. Check e-manual about the range of the Dynamixel you use.)
DXL_MOVING_STATUS_THRESHOLD = 20                # Dynamixel moving status threshold


class Security:
    def __init__(self, id = 0):
        self.id = id
        self.time_last_clear = None
        self.time_last_set_stiffness = None

class Flags:
    def __init__(self):
        self.WRITE_SPEED_POS = False
        self.WRITE_CLEAR_ERROR = False
        self.WRITE_STIFFNESS = False
        self.FORBIDDEN_STIFFNESS = False
        self.WRITE_SHUTDOWN_COND = False

class Info:
    def __init__(self, model_number = 0, id = -1, firmware = 0, bus_id = -1, geartrain_model = None, electronics_model = None):
        self.model_number = model_number
        self.id = id
        self.firmware = firmware
        self.bus_id = bus_id
        self.geartrain_model = geartrain_model
        self.electronics_model = electronics_model

    P = None
    I = None
    D = None
    OL_filt_threshold = None
    current_limit = None

    def printInfo(self):
        rospy.loginfo("Model number %d" % (self.model_number))
        rospy.loginfo("Firmware version %d" % (self.firmware))
        rospy.loginfo("Bus ID %d" % (self.bus_id))
        rospy.loginfo("Geartrain model %d" % (self.geartrain_model))
        rospy.loginfo("Electronics model %d" % (self.electronics_model))

class Joint:
    def __init__(self, info):
        self.info = info
        try:
            name = [n for n, id in joint_dict.items() if id == self.info.id][0]
            self.name = name
        except IndexError:
            self.name = 'None'
            rospy.logwarn("Joint with ID %d has not met its mapping, name set to 'None'", self.info.id)

    bus_id = 0
    stiffness = 8
    stress_level = 0
    target_pos = 0
    target_speed = 0
    torque_limit = 0
    pres_pos = 0
    pres_speed = 0
    temperature = 0
    moving = 0
    HW_err_cond = 0
    overload_filter_value = 0
    pres_current = 0

    def printJointInfo (self):
        rospy.loginfo("Informations about joint " + self.name)
        self.info.printInfo()
        rospy.loginfo("########################")

    def set_stress_level (self, OL_threshold, current_limit):
        temp_stress = self.overload_filter_value / (OL_threshold * 0.8) + self.pres_current/(current_limit * 0.9)
        self.stress_level = int(temp_stress/2)

class MainBoard:
    def __init__(self,bus_id):
        self.id = bus_id
        try:
            name = [n for n, id in joint_dict.items() if id == self.id][0]
            self.name = name
        except IndexError:
            self.name = 'None'
            rospy.logwarn("Main board with ID %d has not met its mapping, name set to 'None'", self.id)
    palm_IR_sensor = 0
    capacitive_sensor_1 = 0
    capacitive_sensor_2 = 0

portHandler = PortHandler(DEVICENAME)
packetHandler = PacketHandler(PROTOCOL_VERSION)

# Initialize a GroupSyncRead instance
groupSyncRead = GroupSyncRead(portHandler,packetHandler, ADDR_START_SYNC_READ, LEN_SYNC_READ)
groupSyncReadMainBoard = GroupSyncRead(portHandler,packetHandler,ADDR_START_SYNC_READ_MAIN_BOARD, LEN_SYNC_READ_MAIN_BOARD)

# Creating groupSyncWrite instances for each syncWrite that will be used : set Target speed and position, Clear HW Error, Set Stiffness
groupSyncWriteSpeedPos = GroupSyncWrite(portHandler, packetHandler, ADDR_START_SYNC_WRITE, LEN_SYNC_WRITE)
groupSyncWriteClearError = GroupSyncWrite(portHandler, packetHandler, ADDR_HW_ERROR_COND, LEN_HW_ERROR_COND)
groupSyncWriteStiffness = GroupSyncWrite(portHandler, packetHandler, ADDR_SYNC_WRITE_STIFFNESS, LEN_SYNC_WRITE_STIFFNESS)
groupSyncWritePermission = GroupSyncWrite(portHandler, packetHandler, ADDR_PERMISSION, LEN_PERMISSION)
groupSyncWriteSetShutdownCond = GroupSyncWrite(portHandler, packetHandler, ADDR_SHUTDOWN_COND, LEN_SHUTDOWN_COND)

# Define a list filled with the IDs that are supposed to be found based on the YAML file
dict_id_list = list(joint_dict.values())

# Define lists for reading IDs and model number
dxl_read_ID_list = []
dxl_model_number_list = []

# Define list to store main boards IDs
main_board_ID_list = []

# Define Lists to store IDs and parameters to write joints clear error
# dxl_write_ID_list_clear_error = []
# dxl_write_params_clear_error = []

# Define Lists to store IDs and parameters to write joints target position and speed
dxl_write_ID_list_speed_pos = []
dxl_write_params_speed_pos = []

# Define Lists to store IDs and parameters to write joints stiffness
dxl_write_ID_list_stiffness = []
dxl_write_params_stiffness = []
dxl_stiffness_permission_ID = []
dxl_permission_param = []

# Define empty lists to store data that will be read and sent through ROS Messages
infos = []
joints = []
main_boards = []

# Define an instance of Flags, used to tell the main loop when to write
write_flags = Flags()

# Define empty list of security class
security_list = []

timing_write_list = []
exceeding_timing_list = []
timing_list = []
# Open port
try:
   portHandler.openPort()
   rospy.loginfo("Succeeded to open the port")
except:
    rospy.loginfo("Failed to open the port")
    rospy.loginfo("Press any key to terminate...")
    getch()
    quit()

# Set port baudrate
try:
    portHandler.setBaudRate(BAUDRATE)
    rospy.loginfo("Succeeded to change the baudrate")
except:
    rospy.loginfo("Failed to change the baudrate")
    rospy.loginfo("Press any key to terminate...")
    getch()
    quit()

def getIDFromName(name):
    if name.isnumeric():
        id = int(name)
        return id
    else:
        try:
            id = joint_dict[name]
        except KeyError:
            id = 'None'
            rospy.logwarn("KeyError raised while trying to match joint %s with its ID. Check the dictionary declaration in the YAML file. Ignore this if you're using 2 hands on 2 different ports." % name)
        return id

def getPIDFromStiffness(stiffness,id):
    # Find the joint in the list
    joint = [j for j in joints if j.bus_id == id]
    if not joint:
        return
    else :
        if stiffness == 1:  # Lowest stiffness : default P/2
            P = math.ceil(joint[0].info.P / 2)
            I = joint[0].info.I
            D = joint[0].info.D
        elif stiffness == 8:    # Stiffness value 8 : default PID values
            P = joint[0].info.P
            I = joint[0].info.I
            D = joint[0].info.D
        elif 1 < stiffness < 8:
            P = math.ceil(1.42 * stiffness + 8.5)
            I = joint[0].info.I
            D = joint[0].info.D
        elif stiffness == 9:
            P = math.ceil(25 * stiffness - 180)
            I = joint[0].info.I
            D = joint[0].info.D
        return P, I, D

def clearErrorCallback(ClearHWError):
# Clearing previous parameters for syncWrite, clearing list variables used to add these parameters
    groupSyncWriteClearError.clearParam()
    #dxl_write_params_clear_error.clear()
    #dxl_write_ID_list_clear_error.clear()
    #
    # A UTILISER SI FINALEMENT ON FAIT VIA LISTE
    # if ListClearHWError.length != len(ListClearHWError.joints):
    #     rospy.loginfo("In clearError : Length attribute doesn't correspond to actual joint list length, will avoid writing.")
    #     return
    id = getIDFromName(ClearHWError.name)
    if id != 'None':
        # Check security timing:
        for i in security_list:
            if id == i.id:
                if i.time_last_clear is not None:
                    timing_check = time.time_ns()/1000000000 - i.time_last_clear
                    if timing_check < 30:
                        rospy.logwarn("Trying to clear error on joint %s too frequently : command discarded" % ClearHWError.name)
                        return
                i.time_last_clear = time.time_ns()/1000000000
        param = [DXL_LOBYTE(DXL_LOWORD(0))]
        dxl_addparam_result = groupSyncWriteClearError.addParam(id,param)
        if dxl_addparam_result != True:                                    # Check if addParam worked well
            rospy.logerr("groupSyncWriteClearError addparam failed on joint %s" % ClearHWError.name)
            return
    else:
        rospy.logwarn("Cannot clear error for joint %s, abort writing. Ignore this if you're using 2 hands on 2 different ports." % ClearHWError.name)
        return

    write_flags.WRITE_CLEAR_ERROR = True

def SetShutdownCondCallback(SetShutdownCond):
    groupSyncWriteSetShutdownCond.clearParam()
    id = getIDFromName(SetShutdownCond.name)
    if id != 'None':
        if SetShutdownCond.temperature is True and SetShutdownCond.overload is True:
            param = [DXL_LOBYTE(DXL_LOWORD(DEFAULT_SHUTDOWN_COND))]
        elif SetShutdownCond.temperature is False and SetShutdownCond.overload is True:
            param = [DXL_LOBYTE(DXL_LOWORD(DISABLE_TEMP_COND))]
        elif SetShutdownCond.temperature is True and SetShutdownCond.overload is False:
            param = [DXL_LOBYTE(DXL_LOWORD(DISABLE_OL_COND))]
        elif SetShutdownCond.temperature is False and SetShutdownCond.overload is False:
            param = [DXL_LOBYTE(DXL_LOWORD(DISABLE_OL_AND_TEMP))]
        else:
            return
        dxl_addparam_result = groupSyncWriteSetShutdownCond.addParam(id,param)
        if dxl_addparam_result != True:
            rospy.logerr("groupSyncWriteSetShutdownCond addparam failed on joint %s" % SetShutdownCond.name)
            return
    else:
        rospy.logwarn("Cannot set shutdown condition for joint %s, abort writing. Ignore this if you're using 2 hands on 2 different ports." % SetShutdownCond.name)
        return

    write_flags.WRITE_SHUTDOWN_COND = True

def setStiffnessCallback(JointListSetStiffness):
    if write_flags.FORBIDDEN_STIFFNESS:
        rospy.logwarn("ROS Package started after stiffness change. Stiffness commands discarded. Power cycle unit to restore stiffness change.")
        return

    groupSyncWriteStiffness.clearParam()
    dxl_write_params_stiffness.clear()
    dxl_write_ID_list_stiffness.clear()
    dxl_stiffness_permission_ID.clear()
    dxl_permission_param.clear()

    for joint in JointListSetStiffness.joints:
        id = getIDFromName(joint.name)
        if id != 'None':
            # Check security timing
            for i in security_list:
                if id == i.id:
                    if i.time_last_set_stiffness is not None:
                        timing_check = time.time_ns()/1000000000 - i.time_last_set_stiffness
                        if timing_check < 30:
                            rospy.logwarn("Trying to set stiffness on joint %s too frequently : command discarded" % joint.name)
                            return
                    i.time_last_set_stiffness = time.time_ns()/1000000000

            dxl_write_ID_list_stiffness.append(id)
            dxl_stiffness_permission_ID.append(id)
            stiffness = joint.stiffness
            if 1 <= stiffness <= 9:
                P, I, D = getPIDFromStiffness(joint.stiffness, id)
                param = [DXL_LOBYTE(DXL_LOWORD(D)),DXL_LOBYTE(DXL_LOWORD(I)),DXL_LOBYTE(DXL_LOWORD(P))]
                dxl_write_params_stiffness.append(param)
                perm_param = [DXL_LOBYTE(DXL_LOWORD(PERMISSION_ENABLE))]
                dxl_permission_param.append(perm_param)
                # Change the stiffness value in the local
                # hex_list = [hex(param[0]),hex(param[1]),hex(param[2])]
                # rospy.loginfo(hex_list)
                joint_pos = [index for (index,item) in enumerate(joints) if item.name == joint.name]
                index = joint_pos[0]
                joints[index].stiffness = joint.stiffness
                #SET STIFFNESS DANS joints[]
            else:
                rospy.logwarn("Stiffness value out of range, try with a value between 0 and 254")
                return
        else:
            rospy.logwarn("Cannot set stiffness for joint %s, abort writing. Ignore this if you're using 2 hands on 2 different ports." % joint.name)
            return
    rospy.loginfo(dxl_write_ID_list_stiffness)
    for index, id in enumerate(dxl_write_ID_list_stiffness):
        dxl_addparam_result = groupSyncWriteStiffness.addParam(id, dxl_write_params_stiffness[index])
        if dxl_addparam_result != True:
            rospy.logerr("[ID:%d] groupSyncWriteStiffness addparam failed, abort wrtiting" % id)
            return
    for index, id in enumerate(dxl_stiffness_permission_ID):
        dxl_addparam_result = groupSyncWritePermission.addParam(id, dxl_permission_param[index])
        if dxl_addparam_result != True:
            rospy.logerr("[ID:%d] groupSyncWritePermission addparam failed, abort wrtiting" % id)
            return
    write_flags.WRITE_STIFFNESS = True


def setSpeedPosCallback(JointListSetSpeedPos):
    # Clearing previous parameters for syncWrite, clearing list variables used to add these parameters
    groupSyncWriteSpeedPos.clearParam()
    dxl_write_params_speed_pos.clear()
    dxl_write_ID_list_speed_pos.clear()

    for joint in JointListSetSpeedPos.joints:                           # Going through the joint list
        id = getIDFromName(joint.name)
        rospy.loginfo("In setSpeedPosCallback")
        rospy.loginfo(id)
        if id != 'None':
            dxl_write_ID_list_speed_pos.append(id)                      # Add the ID to the ID List
            target_pos = joint.target_pos                               # Storing the wanted position locally
            if joint.target_speed < 0:                                  # If the requested target speed is negative
                for i in lone_joint_list:
                    if i.bus_id == id:
                        target_speed = i.target_speed                   # Then the target speed will be the previous target speed
                        break
            else:
                target_speed = joint.target_speed

            # Allocate the values to be sent in byte form
            param = [DXL_LOBYTE(DXL_LOWORD(target_pos)),DXL_HIBYTE(DXL_LOWORD(target_pos)),DXL_LOBYTE(DXL_LOWORD(target_speed)),DXL_HIBYTE(DXL_LOWORD(target_speed))]
            dxl_write_params_speed_pos.append(param)                # Append these values to the parameters list for the syncWrite
            #hex_list =  [hex(param[0]),hex(param[1]),hex(param[2]),hex(param[3])]
            #rospy.loginfo("ID : %d target speed : %d" % (id,target_speed))
            #rospy.loginfo(hex_list)

        else:
            rospy.logwarn("Cannot set target speed and position for joint %s, abort writing.  Ignore this if you're using 2 hands on 2 different ports." % joint.name)
            return
    #else : voir dans le dictionnaire et faire en fco du mapping
    # Check si dxl_write_params_speed_pos.length == JointListSetSpeedPos.length
    # rospy.loginfo(dxl_write_ID_list_speed_pos)
    # rospy.loginfo(dxl_write_params_speed_pos)
    for index, id in enumerate(dxl_write_ID_list_speed_pos):
        # rospy.loginfo("id : %d index : %d" % (id,index))                            # Add each parameters of the list that was filled to the groupSyncWrite instance
        dxl_addparam_result = groupSyncWriteSpeedPos.addParam(id,dxl_write_params_speed_pos[index])
        if dxl_addparam_result != True:                                                   # Check if the addParam worked
            rospy.logerr("[ID:%d] groupSyncWriteSpeedPos addparam failed, abort wrtiting" % id)
            return

    write_flags.WRITE_SPEED_POS = True                                  # Set WRITE_SPEED_POS flag to True : message for the main loop saying that the next iteration will send these commands

pub_joint_topic = PREFIX + 'Joints'
pub_MB_topic = PREFIX + 'Main_Boards'
sub_speed_pos = PREFIX + 'speed_position'
sub_clear = PREFIX + 'clear_error'
sub_stiffness = PREFIX + 'stiffness'
sub_shutdown = PREFIX + 'shutdown_condition'
# Initialize ROS Publisher sending AllJoints messages to Joints topic
pub = rospy.Publisher(pub_joint_topic, AllJoints, queue_size = 10)
# Initialize ROS Publisher sending AllMainBoards messages to Main_Boards topic
pub_main_board = rospy.Publisher(pub_MB_topic, AllMainBoards, queue_size = 10)
# Subscribe to the speed_position Topic that will get JointListSetSpeedPos messages and process them with the setSpeedPosCallback function
rospy.Subscriber(sub_speed_pos, JointListSetSpeedPos, setSpeedPosCallback)
# Subscribe to the clear_error Topic that will get ListClearHWError messages and process them with the clearErrorCallback function
rospy.Subscriber(sub_clear, ClearHWError, clearErrorCallback)
# Subscribe to the stiffness Topic that will get JointListStiffness messages and process them with the setStiffnessCallback function
rospy.Subscriber(sub_stiffness, JointListSetStiffness, setStiffnessCallback)
# Subscribe to the HW error check topic that will get SetShutdownCond messages and process them with the SetShutdownCondCallback function
rospy.Subscriber(sub_shutdown, SetShutdownCond, SetShutdownCondCallback)

# Define a function to scan the bus for IDs from 0 to 252
def pingScan():
    for id in range(253):
        # Try to ping the Dynamixel
        # Get Dynamixel model number and store them in a list
        dxl_model_number, dxl_comm_result, dxl_error = packetHandler.ping(portHandler, id)
        if dxl_comm_result == COMM_SUCCESS and dxl_error == 0 :
            rospy.loginfo("[ID:%03d] ping Succeeded. Dynamixel model number : %d" % (id, dxl_model_number))
            if dxl_model_number != 405 :
                dxl_read_ID_list.append(id)
                dxl_model_number_list.append(dxl_model_number)
                security_list.append(Security(id))
            else:
                main_board_ID_list.append(id)


# Define a function to store basic joints informations displayed on init
def initInfoList():
    for index, id in enumerate(dxl_read_ID_list):
        temp_info = Info(model_number = dxl_model_number_list[index], id = id)
        infos.append(temp_info)



# Define a function to read 1 byte of information on a specific joint
def readInfo(id, address):
    info, dxl_comm_result, dxl_error = packetHandler.read1ByteTxRx(portHandler, id, address)
    if dxl_comm_result != COMM_SUCCESS:
        rospy.loginfo("%s" % packetHandler.getTxRxResult(dxl_comm_result))
    elif dxl_error != 0:
        rospy.loginfo("%s" % packetHandler.getRxPacketError(dxl_error))
    else:
        return info

#Scan the buses and fill the dxl_read_ID_list with IDs found
pingScan()

all_IDs_list = dxl_read_ID_list + main_board_ID_list

# Check if the scan did find every joint declared in the dictionary
if set(all_IDs_list) != set(dict_id_list):
    rospy.logwarn("Bus scan did not find every joint declared in the YAML dictionary")
else:
    rospy.loginfo("Bus scan went well, every joint in YAML dictionary was found")

# Initialize the ROS messages structures
lone_joint_list = [LoneJoint() for i in range(len(dxl_read_ID_list))]
alljoints_msg = AllJoints()

lone_main_boards_list = [LoneMainBoard() for i in range(len(main_board_ID_list))]
allmainboards_msg = AllMainBoards()

# Define a function that will fill ROS Joint Messages with data that are collected in the joints[] list (which are read by syncRead in the main loop)
def fillROSJointsMessages():
    for index, lone_joint in enumerate(lone_joint_list):
    # Go through all the IDs and fill ROS message field one by one
        lone_joint.name = joints[index].name
        lone_joint.bus_id = joints[index].bus_id
        lone_joint.stiffness = joints[index].stiffness
        lone_joint.target_position = joints[index].target_pos
        lone_joint.target_speed = joints[index].target_speed
        lone_joint.torque_limit = joints[index].torque_limit
        lone_joint.present_position = joints[index].pres_pos
        lone_joint.temperature = joints[index].temperature
        lone_joint.HW_error_condition = joints[index].HW_err_cond
        lone_joint.present_speed = joints[index].pres_speed
        if not LIGHT_MODE:
            lone_joint.stress_level = joints[index].stress_level
            lone_joint.moving = joints[index].moving
            lone_joint.current = joints[index].pres_current

    # Once every lone_joint_list element is filled, fill the alljoints_msg that will be sent
    alljoints_msg.header.stamp = rospy.Time.now()
    alljoints_msg.length = len(dxl_read_ID_list)
    alljoints_msg.joints = lone_joint_list

def fillROSMainBoardMessages():
    for index, lone_main_board in enumerate(lone_main_boards_list):
        lone_main_board.name = main_boards[index].name
        lone_main_board.id = main_boards[index].id
        lone_main_board.palm_IR_sensor = main_boards[index].palm_IR_sensor
        lone_main_board.capacitive_sensor_1 = main_boards[index].capacitive_sensor_1
        lone_main_board.capacitive_sensor_2 = main_boards[index].capacitive_sensor_2

    allmainboards_msg.header.stamp = rospy.Time.now()
    allmainboards_msg.length = len(main_board_ID_list)
    allmainboards_msg.boards = lone_main_boards_list

# Fill the infos[] list with Info instances
initInfoList()

# Fill the missing fields of the Info instances in the infos[list] by reading at different addresses
for index, id in enumerate(dxl_read_ID_list):

# Read informations about the joints and fill each Info object of the Info list

    infos[index].firmware = readInfo(id, ADDR_FIRMWARE_VERSION)
    infos[index].D = readInfo(id, ADDR_D)
    infos[index].I = readInfo(id, ADDR_I)
    infos[index].P = readInfo(id, ADDR_P)
    infos[index].bus_id = readInfo(id, ADDR_BUS_ID)
    infos[index].OL_filt_threshold = readInfo(id, ADDR_OL_FILTER_THRESHOLD)
    infos[index].geartrain_model = readInfo(id, ADDR_GEARTRAIN_MODEL)
    infos[index].electronics_model = readInfo(id, ADDR_ELECTRONICS_MODEL)
    check_PID_change = readInfo(id, ADDR_PERMISSION)
    if check_PID_change == 0:
        write_flags.FORBIDDEN_STIFFNESS = True

    current_limit, dxl_comm_result, dxl_error = packetHandler.read2ByteTxRx(portHandler, id, ADDR_CURRENT_LIMIT)
    if dxl_comm_result != COMM_SUCCESS:
        rospy.loginfo("%s" % packetHandler.getTxRxResult(dxl_comm_result))
    elif dxl_error != 0:
        rospy.loginfo("%s" % packetHandler.getRxPacketError(dxl_error))
    else:
        infos[index].current_limit = current_limit



# Enable Torque for every joint

    dxl_comm_result, dxl_error = packetHandler.write1ByteTxRx(portHandler, id, ADDR_TORQUE_ENABLE, TORQUE_ENABLE)
    if dxl_comm_result != COMM_SUCCESS:
        rospy.loginfo("%s" % packetHandler.getTxRxResult(dxl_comm_result))
    elif dxl_error != 0:
        rospy.loginfo("%s" % packetHandler.getRxPacketError(dxl_error))
    else:
        rospy.loginfo("Dynamixel#%d has been successfully connected" % id)

# # Enable Permissions for every joint
#
#     dxl_comm_result, dxl_error = packetHandler.write1ByteTxRx(portHandler, id, ADDR_PERMISSION, PERMISSION_ENABLE)
#     if dxl_comm_result != COMM_SUCCESS:
#         rospy.loginfo("%s" % packetHandler.getTxRxResult(dxl_comm_result))
#     elif dxl_error != 0:
#         rospy.loginfo("%s" % packetHandler.getRxPacketError(dxl_error))


# Add parameters to groupSyncRead to read all joints at once

    dxl_addparam_result = groupSyncRead.addParam(id)
    if dxl_addparam_result != True:
        rospy.logerr("[ID:%03d] groupSyncRead addparam failed" % id)
        quit()

if write_flags.FORBIDDEN_STIFFNESS:
    rospy.logwarn("ROS Package started after stiffness change. Stiffness commands will be ignored. Power cycle Unit to restore stiffness change.")


# Add parameters to groupSyncReadMainBoard to read all main boards at once
for id in main_board_ID_list:
    temp_mainboard = MainBoard(id)
    main_boards.append(temp_mainboard)
    dxl_addparam_result = groupSyncReadMainBoard.addParam(id)
    if dxl_addparam_result != True:
        rospy.logerr("[ID:%03d] groupSyncReadMainBoard addparam failed" % id)
        quit()

rospy.loginfo("Main boards IDs :")
rospy.loginfo(main_board_ID_list)

# Initialize a list of Joint instances to store data
for i in infos:
    temp_joint = Joint(info = i)
    temp_joint.bus_id = i.bus_id
    joints.append(temp_joint)

for i in joints:
    i.printJointInfo()

# Define the period with the FREQUENCY given by the user in the launchfile
PERIOD = 1000 / FREQUENCY #ms



# MAIN LOOP
while not rospy.is_shutdown() :

    # Defining Cycle start and cycle end for each iteration to have clearance about the timing
    Cycle_Start = time.time_ns()/1000000 #msec
    Cycle_End = Cycle_Start + PERIOD     #msec
    #rospy.loginfo("Start %d, expected end %d" % (Cycle_Start, Cycle_End))

    # Syncread the data packet
    dxl_comm_result = groupSyncRead.txRxPacket()
    if dxl_comm_result != COMM_SUCCESS:
        rospy.logwarn("Communication not successfull in SyncRead : %s" % (packetHandler.getTxRxResult(dxl_comm_result)))


    for joint, id in zip(joints, dxl_read_ID_list):

        # Check if groupsyncread data of each id is available
        dxl_getdata_result = groupSyncRead.isAvailable(id, ADDR_START_SYNC_READ, LEN_SYNC_READ)
        if dxl_getdata_result != True:
            rospy.logerr("[ID:%d] groupSyncRead getdata failed" % id)
            break

        # Get joints values to transmit
        joint.target_pos = groupSyncRead.getData(id, ADDR_TARGET_POSITION, LEN_TARGET_POSITION)
        joint.target_speed = groupSyncRead.getData(id, ADDR_TARGET_SPEED, LEN_TARGET_SPEED)
        joint.torque_limit = groupSyncRead.getData(id, ADDR_TORQUE_LIMIT, LEN_TORQUE_LIMIT)
        joint.pres_pos = groupSyncRead.getData(id, ADDR_PRESENT_POSITION, LEN_PRESENT_POSITION)
        joint.pres_speed = groupSyncRead.getData(id, ADDR_PRESENT_SPEED, LEN_PRESENT_SPEED)
        if not LIGHT_MODE:
            joint.temperature = groupSyncRead.getData(id, ADDR_TEMPERATURE, LEN_TEMPERATURE)
            joint.moving = groupSyncRead.getData(id, ADDR_MOVING, LEN_MOVING)
            joint.HW_err_cond = groupSyncRead.getData(id, ADDR_HW_ERROR_COND, LEN_HW_ERROR_COND)
            if joint.HW_err_cond != 0:
                rospy.logwarn("Joint %s currently has hardware error %d" % (joint.name,joint.HW_error_condition))
            joint.overload_filter_value = groupSyncRead.getData(id, ADDR_OL_FILTER_VALUE, LEN_OL_FILTER_VALUE)
            joint.pres_current = groupSyncRead.getData(id, ADDR_CURRENT, LEN_CURRENT)
            joint.set_stress_level(joint.info.OL_filt_threshold, joint.info.current_limit)

    # Fill the ROS message with the retrieved data from the joints
    fillROSJointsMessages()
    # Publish the ROS message
    pub.publish(alljoints_msg)
    #rospy.loginfo(alljoints_msg)

    if LIGHT_MODE:
        # cycle_time = time.time_ns()/1000000 - Cycle_Start
        # timing_list.append(cycle_time)
        # if len(timing_list) > 3000:
        #     rospy.loginfo(timing_list)
        if time.time_ns()/1000000 > Cycle_End:
            exceeding_time_ms = time.time_ns()/1000000 - Cycle_End
            rospy.logwarn("TIME PERIOD EXCEEDED. Time exceeded by %d ms" % exceeding_time_ms)

    # Check the write_flags to know if something is pending to be sent
    if write_flags.WRITE_CLEAR_ERROR == False:              # Highest Priority : Clear Error
        if write_flags.WRITE_SHUTDOWN_COND == False:        # Medium High Priority : Set Shutdown Conditions
            if write_flags.WRITE_STIFFNESS == False:        # Medium Priority : Set Stiffness
                if write_flags.WRITE_SPEED_POS == True:     # Lowest Priority : Set target speed and position
                    # Syncwrite goal position and speed
                    rospy.loginfo(groupSyncWriteSpeedPos.data_dict)
                    dxl_comm_result = groupSyncWriteSpeedPos.txPacket()
                    # Check if the communication was successfull
                    if dxl_comm_result != COMM_SUCCESS:
                        rospy.logwarn("Communication problem in groupSyncWriteSpeedPos : %s" % packetHandler.getTxRxResult(dxl_comm_result))
                    # Setting the flag back to False, will be set to True in the callback function
                    write_flags.WRITE_SPEED_POS = False
                    rospy.loginfo("############################# WRITING SPEED POS ##########################################")
            else:
                # Stiffness command :
                # Enable PID write permission on every joint needed
                dxl_comm_result = groupSyncWritePermission.txPacket()
                if dxl_comm_result != COMM_SUCCESS:
                    rospy.logwarn("Communication error while syncWriting Stiffness Permission : %s" % packetHandler.getTxRxResult(dxl_comm_result))
                # Syncwrite Stiffness
                dxl_comm_result = groupSyncWriteStiffness.txPacket()
                if dxl_comm_result != COMM_SUCCESS:
                    rospy.logwarn("Communication error while syncWriting Stiffness : %s" % packetHandler.getTxRxResult(dxl_comm_result))
                write_flags.WRITE_STIFFNESS = False
                rospy.loginfo("######################## SETTING STIFFNESS #########################")
        else:
            # Syncwrite shutdown conditions
            dxl_comm_result = groupSyncWriteSetShutdownCond.txPacket()
            if dxl_comm_result != COMM_SUCCESS:
                rospy.logwarn("Communication error while syncWriting shutdown conditions : %s" % packetHandler.getTxRxResult(dxl_comm_result))
            write_flags.WRITE_SHUTDOWN_COND = False
            rospy.loginfo("############### SETTING SHUTDOWN CONDITIONS ######################3")
    else:
        # SyncWrite clear error
        dxl_comm_result = groupSyncWriteClearError.txPacket()
        if dxl_comm_result != COMM_SUCCESS:
            rospy.logwarn("Communication problem in groupSyncWriteClearError : %s" % packetHandler.getTxRxResult(dxl_comm_result))
        rospy.loginfo("############################# CLEARING ERROR ##########################################")
        write_flags.WRITE_CLEAR_ERROR = False

    if time.time_ns()/1000000 > Cycle_End:
        if not LIGHT_MODE:
            exceeding_time_ms = time.time_ns()/1000000 - Cycle_End
            rospy.logwarn("TIME PERIOD EXCEEDED, You may want to try Light Mode. Time exceeded by %d ms" % exceeding_time_ms)
            # exceeding_timing_list.append(exceeding_time_ms)

    else:
    # Read data from the main boards
    # Syncread the data packet
        if not LIGHT_MODE:
            dxl_comm_result = groupSyncReadMainBoard.txRxPacket()
            if dxl_comm_result != COMM_SUCCESS:
                rospy.logwarn("Communication not successfull in groupSyncReadMainBoard : %s" % (packetHandler.getTxRxResult(dxl_comm_result)))

            for main_board, id in zip(main_boards,main_board_ID_list):
                # Check if groupsyncread data of each id is available
                dxl_getdata_result = groupSyncReadMainBoard.isAvailable(id, ADDR_START_SYNC_READ_MAIN_BOARD, LEN_SYNC_READ_MAIN_BOARD)
                if dxl_getdata_result != True:
                    rospy.logerr("[ID:%d] groupSyncReadMainBoard getdata failed" % id)
                    break

                main_board.palm_IR_sensor = groupSyncReadMainBoard.getData(id, ADDR_PALM_IR_SENSOR, LEN_PALM_IR_SENSOR)
                main_board.capacitive_sensor_1 = groupSyncReadMainBoard.getData(id, ADDR_CAPACITIVE_SENSOR_1, LEN_CAPACITIVE_SENSOR)
                main_board.capacitive_sensor_2 = groupSyncReadMainBoard.getData(id, ADDR_CAPACITIVE_SENSOR_2, LEN_CAPACITIVE_SENSOR)
            #Fill the AllMainBoards message
            fillROSMainBoardMessages()
            #Publish the AllMainBoards message
            pub_main_board.publish(allmainboards_msg)
            #rospy.loginfo(allmainboards_msg)
        # cycle_time = time.time_ns()/1000000 - Cycle_Start
        # timing_write_list.append(cycle_time)
        # if len(timing_write_list) > 3000:
        #     print(timing_write_list)
            if time.time_ns()/1000000 > Cycle_End:
                exceeding_time_ms = time.time_ns()/1000000 - Cycle_End
                #exceeding_timing_list.append(exceeding_time_ms)
                rospy.logwarn("TIME PERIOD EXCEEDED, You may want to try Light Mode. Time exceeded by %d ms" % exceeding_time_ms)
            else:
                sleep_time_ms = Cycle_End - time.time_ns()/1000000 #msec
                # rospy.loginfo("Milliseconds left after sending main board data : %d" % sleep_time_ms)
                # rospy.loginfo("Time left on cycle : %d" % sleep_time_ms)
                # timing_write_list.append(sleep_time_ms)
                # if len(timing_write_list) > 100:
                #     mean = sum(timing_write_list) / len(timing_write_list)
                #     rospy.loginfo("######### Printing good timing list ###############")
                #     rospy.loginfo(timing_write_list)
                #     rospy.loginfo(" ################# Average Time left is %d ##################" % mean)
                #     rospy.loginfo("######### printing exceeding_timing_list :")
                #     rospy.loginfo(exceeding_timing_list)
                sleep_time = (math.floor(sleep_time_ms)) * 0.001  #sec
                if sleep_time > 0:
                    time.sleep(sleep_time)
        else:
            if time.time_ns()/1000000 < Cycle_End:
                sleep_time_ms = Cycle_End - time.time_ns()/1000000 #msec
                sleep_time = (math.floor(sleep_time_ms)) * 0.001  #sec
                if sleep_time > 0:
                    time.sleep(sleep_time)


portHandler.closePort()
