#!/bin/bash
# ROS2 jazzy_ros2_source.sh
# https://docs.ros.org/en/jazzy/Installation/Alternatives/Ubuntu-Development-Setup.html

echo 'Ready to source your jazzy ros2 environment?'
read -s -p "printenv | grep -i ROS - Press Enter to continue..."
printenv | grep -i ROS

read -s -p "next will make sure you are in ~/ros2_jazzy/ - Press Enter to continue..."
cd ~/ros2_jazzy/

# Setup environment - Set up your environment by sourcing the following file.
read -s -p ". ~/ros2_jazzy/install/local_setup.bash - Press Enter to continue..."
. ~/ros2_jazzy/install/local_setup.bash

read -s -p "I think we are all setup.  Ready to test? - Press Enter to continue..."

echo 'Try some examples'
echo 'In one terminal, source the setup file and then run a C++ talker: '
echo '. ~/ros2_jazzy/install/local_setup.bash'
echo 'ros2 run demo_nodes_cpp talker'
echo ' '
echo 'In another terminal source the setup file and then run a Python listener: '
echo '. ~/ros2_jazzy/install/local_setup.bash'
echo 'ros2 run demo_nodes_py listener'
