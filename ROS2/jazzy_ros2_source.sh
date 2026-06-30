#!/bin/bash
# ROS2 jazzy_ros2_source.sh
# https://docs.ros.org/en/jazzy/Installation/Alternatives/Ubuntu-Development-Setup.html

echo 'Ready to source your jazzy ros2 environment?'
read -s -p "Press Enter to continue..."

echo 'Try some examples'
echo 'In one terminal, source the setup file and then run a C++ talker: '
echo '. ~/ros2_jazzy/install/local_setup.bash'
echo 'ros2 run demo_nodes_cpp talker'
echo ' '
echo 'In another terminal source the setup file and then run a Python listener: '
echo '. ~/ros2_jazzy/install/local_setup.bash'
echo 'ros2 run demo_nodes_py listener'

echo "----------------------------------------------------"
echo "Do you wish to run ROS Talker or Listener?  Enter t/T or l/L or any Key to quit?"
read -p "Talk or Listen?: " ros2Mode
# elif statements
if [ $ros2Mode == "t" ] || [ $ros2Mode == "T" ]
then
echo "----------------------------------------------------"
echo "changing to the ros2_jazzy"
cd ~/ros2_jazzy/
echo "sourcing ~/ros2_jazzy/install/local_setup.bash"
. ~/ros2_jazzy/install/local_setup.bash
echo "ros2 run demo_nodes_cpp talker"
ros2 run demo_nodes_cpp talker
echo "----------------------------------------------------"
echo "Done running ROS as a Talker"
echo "----------------------------------------------------"
elif [ $ros2Mode == "l" ] || [ $ros2Mode == "L" ]
echo "----------------------------------------------------"
echo "changing to the ros2_jazzy"
cd ~/ros2_jazzy/
echo "sourcing ~/ros2_jazzy/install/local_setup.bash"
. ~/ros2_jazzy/install/local_setup.bash
echo "ros2 run demo_nodes_py listener"
ros2 run demo_nodes_py listener
echo "----------------------------------------------------"
echo "Done running ROS as a Listener"
echo "----------------------------------------------------"
else
echo "Skipping ROS source"
fi
