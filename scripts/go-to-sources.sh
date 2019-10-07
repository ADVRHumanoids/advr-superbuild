#!/bin/bash

actual_dir=`pwd`
# if the script is sourced add the trap
[[ "${BASH_SOURCE[0]}" != "${0}" ]] && trap  "{ cd $actual_dir; trap - INT; return 1; }" INT

folder=$(echo $actual_dir | grep -oE "[^/]+$")
group="external"

cd "$XBOT_ROOT/$group/$folder"

# possibly remove trap
trap - INT
