#!/bin/bash
set -e
source /opt/ros/kinetic/setup.bash
cd /code
if [ "$MAKE_ISOLATED" = "true" ]; then
    echo "MAKING ISOLATED"
    exit 1
    catkin_make_isolated
    catkin_make_isolated install
else
    echo "MAKING NOT ISOLATED"
    catkin_make
    catkin_make install
fi
