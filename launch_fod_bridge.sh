#!/bin/bash
export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp
source /opt/ros/noetic/setup.bash
source /opt/ros/foxy/setup.bash
source ./install/setup.bash

rosparam delete /ros_bridge
rosparam load fod_bridge.yaml  /ros_bridge

ros2 run ros1_bridge parameter_bridge /ros_bridge/topics /ros_bridge/services_1_to_2 /ros_bridge/services_2_to_1


