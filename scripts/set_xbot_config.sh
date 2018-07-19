#!/bin/bash

actual_dir=`pwd`

# get and check the path to config passed as input arg
input1=$1
if [ -z "$input1" ]; then
  echo "Usage: set_xbot_config.sh <path_to_config_file>"
  return
fi

if [ ! -f "$input1" ]; then
    echo "Input file not found!"
    return
fi

# eventually create and copy the config file chosen
#mkdir -p $ROBOTOLOGY_ROOT/build/install/configs
#$cp $input1 $ROBOTOLOGY_ROOT/build/install/configs

#CONFIG=`find $input1 -name "*.yaml" -exec basename {} \;`
CONFIG=`readlink -f $input1`

echo "$CONFIG" > $XBOT_CONFIG
echo "$CONFIG"

# come back to the dir where the script was executed
cd $actual_dir
