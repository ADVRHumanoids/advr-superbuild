#!/bin/bash



ROBOTOLOGY_ROOT=$(readlink --canonicalize --no-newline $(dirname $(readlink --canonicalize --no-newline $0))/..)

if [ -f $ROBOTOLOGY_ROOT/build/active_profile ]; then
    . $ROBOTOLOGY_ROOT/build/active_profile
fi

if [ -f ${ROBOTOLOGY_ROOT}/build/got_dependencies ]; then
    echo "ROBOTOLOGY dependencies already installed. Skipping..."
    echo "If you really want to repeat an installation, you can"
    echo "remove $ROBOTOLOGY_ROOT/build/got_dependencies"
else
    # we are on Ubutntu
    if [ "`lsb_release -is`" = 'Ubuntu' ]; then
        sudo apt-add-repository ppa:robotology/ppa -y
        sudo add-apt-repository ppa:v-launchpad-jochen-sprickerhof-de/pcl -y
        sudo sh -c 'echo "deb http://www.icub.org/ubuntu `lsb_release -cs` contrib/science" > /etc/apt/sources.list.d/icub.list'
        sudo sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-latest.list'
        wget http://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -
        sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -cs` main" > /etc/apt/sources.list.d/ros-latest.list'
        wget http://packages.ros.org/ros.key -O - | sudo apt-key add -

        echo "-- Purging ca-certificates-icub-org"
        sudo apt-get remove --purge -y `dpkg-query -W --showformat='${binary:Package} \\ \n' | grep ca-certificates-icub-org`
        #sudo apt-get remove --purge ca-certificates-icub-org
        sudo apt-get update

        sudo apt-get dist-upgrade -y --force-yes --fix-missing
        
        # 12.04
        if [ "`lsb_release -cs`" = 'precise' ]; then
            #First install common packages
            sudo apt-get install -y --force-yes --fix-missing \
              build-essential cmake cmake-curses-gui  \
              git subversion doxygen graphviz  \
              libace-dev libgsl0-dev libgtkmm-2.4-dev libgoocanvasmm-dev libsqlite3-dev python3.2-dev swig  \
              icub-common libtinyxml2-dev \
              libeigen3-dev libxml2-dev  \
              ros-hydro-roscpp-core ros-hydro-srdfdom ros-hydro-cmake-modules  \
              ros-hydro-openni2-*  ros-hydro-moveit-full ros-hydro-joy*  \
              ros-hydro-urdfdom-py ros-hydro-libg2o ros-hydro-octomap* \
              python3-sip-dev python-numpy python-scipy python-matplotlib python-pandas  \
              libarmadillo-dev libblas-dev liblapack-dev  libflann-dev\
              libpng++-dev python-bs4 libsctp-dev mercurial ros-hydro-rviz-imu-plugin libhighgui2.4 \
              libopensplice64 cppcheck \
              python3-empy python3-setuptools python3-nose python3-pip python3-vcstool
	    sudo apt-get install -y --force-yes --fix-missing ros-hydro-desktop-full
            string="`uname -r`"
            word="enomai"
            if [ "${string#*$word}" != "$string" ]; then #if xenomai kernel...
                if [ "${ROBOTOLOGY_PROFILE:=DEFAULT}" = 'ROBOT' ]; then
                    echo
                    #No uncommon packages for xenomai
                fi
            else
                if [ "${ROBOTOLOGY_PROFILE:=DEFAULT}" = 'ROBOT' ]; then
                #Add low latency kernel to non-xenomai
                    sudo apt-get install -y --force-yes --fix-missing linux-lowlatency
                fi
            fi


            if [ "${ROBOTOLOGY_PROFILE:=DEFAULT}" != 'ROBOT' ]; then
                #No uncommon packages for for default setups
                echo
            fi

            git config --global http.sslverify false
            
            #call the script to install yaml-cpp from sources
            sh $ROBOTOLOGY_ROOT/scripts/admin/get_yaml-cpp.sh
            
        # 13.04
        elif [ "`lsb_release -cs`" = 'raring' ]; then
            sudo sed -i -e 's/it.archive.ubuntu.com\|archive.ubuntu.com\|security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list
            sudo apt-get install -y --force-yes --fix-missing build-essential cmake cmake-curses-gui  \
              git subversion doxygen graphviz  \
              libace-dev libgsl0-dev libgtkmm-2.4-dev libgoocanvasmm-dev libsqlite3-dev swig  \
              icub-common libtinyxml2-dev \
              libeigen3-dev libyaml-cpp-dev libxml2-dev  \
	      ros-hydro-srdfdom ros-hydro-cmake-modules  \
              ros-hydro-openni2-* ros-hydro-moveit-full ros-hydro-joy*  ros-hydro-octomap* \
              ros-hydro-urdfdom-py ros-hydro-libg2o \
              python3-sip-dev python-numpy python-scipy python-matplotlib python-pandas  \
              libarmadillo-dev libblas-dev liblapack-dev  libflann-dev\
              libpng++-dev python-bs4 libsctp-dev mercurial ros-hydro-rviz-imu-plugin libhighgui2.4 \
              libopensplice64 cppcheck \
              python3-empy python3-setuptools python3-nose python3-pip python3-vcstool
	    sudo apt-get install -y --force-yes --fix-missing ros-hydro-desktop-full
            string="`uname -r`"
            word="enomai"
            if [ "${string#*$word}" != "$string" ]; then #if xenomai kernel...
                if [ "${ROBOTOLOGY_PROFILE:=DEFAULT}" = 'ROBOT' ]; then
                    #No uncommon packages for xenomai
                    echo
                fi
            else
                if [ "${ROBOTOLOGY_PROFILE:=DEFAULT}" = 'ROBOT' ]; then
                    sudo apt-get install -y --force-yes --fix-missing linux-lowlatency
                fi
            fi

            if [ "${ROBOTOLOGY_PROFILE:=DEFAULT}" != 'ROBOT' ]; then
                sudo apt-get install -y --force-yes --fix-missing gazebo
            fi
            
        # 14.04
        elif [ "`lsb_release -cs`" = 'trusty' ]; then
            sudo apt-get install -y --force-yes --fix-missing build-essential cmake cmake-curses-gui  \
              git subversion doxygen graphviz  \
              libace-dev libgsl0-dev libgtkmm-2.4-dev libgoocanvasmm-dev libsqlite3-dev swig  \
              icub-common libtinyxml2-dev \
              libeigen3-dev libyaml-cpp-dev libxml2-dev  \
              ros-indigo-desktop ros-indigo-srdfdom ros-indigo-cmake-modules  \
              ros-indigo-openni2-* ros-indigo-moveit-* ros-indigo-joy* ros-indigo-octomap* \
              ros-indigo-urdfdom-py ros-indigo-libg2o ros-indigo-pcl-ros  ros-indigo-pcl-conversions \
              ros-indigo-laser-* ros-indigo-ps3joy ros-indigo-stereo-image-proc ros-indigo-image-transport* \
              python3-sip-dev python-numpy python-scipy python-matplotlib python-pandas  \
              libarmadillo-dev libblas-dev liblapack-dev  libflann-dev libmumps-seq-dev \
              libpng++-dev python-bs4 libsctp-dev mercurial ros-indigo-rviz-imu-plugin libhighgui2.4 \
              libopensplice64 cppcheck \
              python3-empy python3-setuptools python3-nose python3-pip python3-vcstool \
	      # pronto dependencies
              libglib2.0-dev openjdk-6-jdk python-dev gtk-doc-tools freeglut3-dev libjpeg-dev \
	      libboost-thread-dev libgtk2.0-dev python-gtk2 mesa-common-dev libgl1-mesa-dev libglu1-mesa-dev libqwt-dev 
            
	    string="`uname -r`"
            word="enomai"
            if [ "${string#*$word}" != "$string" ]; then #if xenomai kernel...
                if [ "${ROBOTOLOGY_PROFILE:=DEFAULT}" = 'ROBOT' ]; then
                    #No uncommon packages for xenomai
                echo
            fi
        else
            if [ "${ROBOTOLOGY_PROFILE:=DEFAULT}" = 'ROBOT' ]; then
                sudo apt-get install -y --force-yes --fix-missing linux-lowlatency
            fi
        fi

        if [ "${ROBOTOLOGY_PROFILE:=DEFAULT}" != 'ROBOT' ]; then
            sudo apt-get install -y --force-yes --fix-missing gazebo3 libgazebo-dev
        fi

      else

         echo
         echo "`lsb_release -cs` is not supported at the moment."
         echo "Ask the superbuild developers to add it!"
         echo
      fi
    fi


    # needed by SoT demos
    sudo apt-get install -y --force-yes --fix-missing python-pip
    sudo pip install svg.path

    # TODO this is a [quickfix]
    echo "Adding robotology-setup.bash to your .bashrc"

    echo ">>> Press ENTER if you want to skip writing to .bashrc. "
    echo "    You should not skip it unless you know what you are doing."
    if read -t 10 -p '    I will wait for 10 seconds <<< ' ; then
        echo "... skipping"
    else
        echo ". $ROBOTOLOGY_ROOT/robotology-setup.bash" >> ~/.bashrc
    fi

    . $ROBOTOLOGY_ROOT/robotology-setup.bash

    # A fresh installaion of ROS would require the following two commands
    # NOT TESTED, please verify!
    sudo rosdep init
    rosdep update

    # ROS indigo
    if [ -d /opt/ros/indigo ]; then
        ROSVER=indigo
        #call the script to install opencv nonfree lib from sources
        sh $ROBOTOLOGY_ROOT/scripts/admin/get_libopencv_nonfree.sh	
        # call the script to insall PCL from sources commented
        # sh $ROBOTOLOGY_ROOT/scripts/admin/get_pcl.sh

	sudo apt-get install libpcl*
    fi

    if [ "${ROBOTOLOGY_PROFILE:=DEFAULT}" = 'ROBOT' ]; then
        #Install IMU drivers
        sh $ROBOTOLOGY_ROOT/scripts/admin/get_Ftd2xx.sh
    fi

    if [ -d $ROBOTOLOGY_ROOT/build/ ]; then
        echo "true" > $ROBOTOLOGY_ROOT/build/got_dependencies
    else
        echo "You can now run bootstrap.sh to fetch all packages"
    fi

    sudo ldconfig

    sudo pip3 install -U setuptools

fi
