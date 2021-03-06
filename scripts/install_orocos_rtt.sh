#!/bin/bash

echo "This script will create an orocos_ws in your robotology_superbuild folder."

if [ "$1" == "xenomai" ]
then
export OROCOS_TARGET="xenomai"
echo "Compiling OROCOS under xenomai"
XENO_VERSION="$(xeno-config --version)"
echo "XENOMAI VERSION IS " ${XENO_VERSION}
XENO_MAJOR_VERSION=${XENO_VERSION:0:1}
fi

cd $ROBOTOLOGY_ROOT
mkdir orocos_ws
cd orocos_ws

catkin_init_workspace

. /etc/lsb-release

export GIT_SSL_NO_VERIFY=1
if [[ `lsb_release -rs` == "14.04" ]] 
then
git clone --recursive -b toolchain-2.7 https://github.com/orocos-toolchain/orocos_toolchain.git src
elif [[ `lsb_release -rs` == "16.04" ]]
then
git clone --recursive -b toolchain-2.9 https://github.com/orocos-toolchain/orocos_toolchain.git src
fi

if [ ${XENO_MAJOR_VERSION} -gt 2 ]
then 
echo "I will remove standard rtt and ocl and install the patches"
rm -rf src/rtt
rm -rf src/ocl
echo "I will clone rtt and ocl ahoarau patches"
cd src
git clone -b xenomai3-support-v2 https://github.com/ahoarau/rtt.git
git clone -b xenomai3-support-v2 https://github.com/ahoarau/ocl.git
cd ..
fi

cd src
git clone https://github.com/orocos/rtt_geometry.git
git clone https://github.com/orocos/rtt_ros_integration.git
cd ..

export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$ROBOTOLOGY_ROOT/orocos_ws/src

sudo apt-get install ruby ruby-dev
sudo apt-get install libomniorb4-dev omniorb-idl omniorb omniorb-nameserver omniidl
sudo gem install rake hoe

sudo rosdep init
rosdep update

rosdep install orocos_toolchain

sudo apt-get install libreadline liblua5.1-0-dev libncurses5-dev

source src/env.sh
catkin_make_isolated --install -DENABLE_CORBA=ON -DCORBA_IMPLEMENTATION=OMNIORB
catkin_make_isolated --install --pkg rtt_geometry
catkin_make_isolated --install --pkg eigen_typekit
catkin_make_isolated --install --pkg kdl_typekit

catkin_make_isolated --install --pkg rtt_ros
catkin_make_isolated --install --pkg rtt_rosnode
catkin_make_isolated --install --pkg rtt_roscomm
catkin_make_isolated --install --pkg rtt_rosclock
catkin_make_isolated --install --pkg utilrb
catkin_make_isolated --install --pkg rtt_sensors_msgs
catkin_make_isolated --install --pkg rtt_trajectory_msgs




