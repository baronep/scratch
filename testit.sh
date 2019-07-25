#!/bin/bash
set -e

source /opt/ros/kinetic/setup.bash
cd /code
catkin_make test
