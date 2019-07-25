#!/bin/bash
set -e

source /opt/ros/kinetic/setup.bash
cd /code
if [ "$MAKE_ISOLATED" = "true" ]; then
    echo "MAKING ISOLATED"
    catkin_make_isolated
else
    echo "MAKING NOT ISOLATED"
    catkin_make test
fi
