#!/bin/bash
source /opt/ros/kinetic/setup.bash
cd /code
if [ "$MAKE_ISOLATED" = "true" ]; then
    exit 1
    catkin_make_isolated
    catkin_make_isolated install
else
    catkin_make
    catkin_make install
fi
