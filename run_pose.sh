#!/bin/bash

if [ $# -ne 1 ]; then
  echo "run_pose <jpg>"
  exit 1
fi
if [ ! -e "openpose.weight" ]; then
  wget https://www.dropbox.com/s/irz49dal2itzpox/openpose.weight
fi
if [ ! -e "darknet" ]; then
  make 
fi
./darknet pose $1 openpose.cfg openpose.weight

