#################### ROS_ROBOTHANDS ####################
########################################################

#################### PROJECT DESCRIPTION ###############
########################################################
This project includes 2 custom ROS packages to ease the use of Seed Robotics products with ROS.

The first package is named "seed_robotics". It allows the user to communicate with a Seed Robotics robotic hand. Communication includes continuous reading in motors memory and making these informations available using ROS messages. This package also allows the user to write to the motors using ROS messages, the user will be able to change the position and the speed of several motors at the same time. It will also be possible to change the stiffness of a motor, to clear its hardware error and to change its shutdown conditions. The instructions for the use of this package will follow. These communications can be done by the user either using command lines, or using Python script (using the rospy library) or CPP project (using rocpp library). There are examples on how to use these different features using python scripts in the src/seed_robotics/user_samples folder. These samples will be explained later. Note that this package allows a working frequency of 50Hz.

The second package is name "sensor_pkg". It eases the communication with Seed Robotics FTS3 and FTS1 pressure sensors using ROS. This package was already available on Github, but here is the latest version, and also the one that allows the user to use it in combination with the ROS package for the Hand control. The sensor_pkg can also be used alone if needed. Its features are the realtime reading of informations sent by the sensor through ROS messages. The sensor_pkg also allows the user to send command to the sensors, either via command lines or using Python script (using the rospy library) or CPP project (using rocpp library). There are examples on how to use these different features using python scripts in the src/sensor_pkg/user_example folder. These samples will be explained later.

There also is a 3rd package in the src/ folder, that is the dynamixel_sdk package which is a library on which the "seed_robotics" package relies.

######################## INSTALLATION ##################
########################################################

In order to work with this package, you must intall ROS Noetic.
Please follow the instructions on the ROS Wiki website here http://wiki.ros.org/noetic/Installation. Please install the desktop-full version.
Please note that this version of the package has only been tested on Ubuntu 20.04.

In order to make this package work, you also need to have Python3 installed. This package have been developped using Python 3.8.10.
You also need to install the following python libs :
- rospy (should have been installed with ROS Noetic)
- std_msgs (should have been installed with ROS Noetic)
- pyserial
- numpy

Once this is done you can clone the root folder of this project. (i.e this folder)
Then, in this folder, open a terminal and type the following command :

"catkin_make"

Afterwards, you NEED to SOURCE your workspace. To do so, in the root folder type

source devel/setup.*    (* Being your CLI, for example setup.bash)

Note that if you want to use this package features in other terminal windows you will have to source each of these terminals aswell.

In order to make the "seed_robotics" package to work at 50Hz, you must change the latency timer of the FTDI chip. To do so you must type the following command each time you plug something on a serial port :

"sudo gedit /sys/bus/usb-serial/devices/$(YOUR_SERIAL_PORT)/latency_timer" And change the value in the file to 1.


Now you should be set up to work with the ROS Packages "seed_robotics" and "sensor_pkg".
