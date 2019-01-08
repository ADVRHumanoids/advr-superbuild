#cmake_minimum_required(VERSION 3.0.0)
cmake_minimum_required(VERSION 2.8.12)

set(YCM_GIT_GITLAB_ADVRCLOUD_BASE_ADDRESS "ssh://git@gitlab.advrcloud.iit.it/" CACHE STRING "Address to use for ADVR cloud Gitlab git repositories" FORCE)

set(YCM_GIT_GITLAB_ADVR_BASE_ADDRESS "ssh://git@gitlab.advr.iit.it/" CACHE STRING "Address to use for ADVR Gitlab git repositories" FORCE)

find_or_build_package_with_tag(OpenSoT ON)

find_or_build_package_with_tag(XBotInterface ON)

find_or_build_package_with_tag(xbot_msgs ON)

find_or_build_package_with_tag(RobotInterfaceROS ON)

find_or_build_package_with_tag(ModelInterfaceRBDL ON)

find_or_build_package_with_tag(ModelInterfaceIDYNUTILS OFF)

find_or_build_package_with_tag(RobotInterfaceYARP OFF)

find_or_build_package_with_tag(RobotInterfaceXBotRT ON)

find_or_build_package_with_tag(ADVR_shared ON)

find_or_build_package_with_tag(robot_shared OFF)

find_or_build_package_with_tag(advr_humanoids_common_utils OFF)

find_or_build_package_with_tag(XBotEcat OFF)

find_or_build_package_with_tag(XBotEthernet OFF)

find_or_build_package_with_tag(XBotDummy ON)

find_or_build_package_with_tag(WebGUIDistr ON)

find_or_build_package_with_tag(XBotCore ON)

find_or_build_package_with_tag(XBotLogger ON)
	
find_or_build_package_with_tag(soem_advr OFF)
find_or_build_package_with_tag(ecat_master_advr OFF)
find_or_build_package_with_tag(ec_master_test OFF)

find_or_build_package_with_tag(GazeboXBotPlugin ON)

find_or_build_package_with_tag(EtherCAT_tools OFF)

find_or_build_package_with_tag(XBotGUI OFF)

find_or_build_package_with_tag(OpenMpC OFF)

find_or_build_package_with_tag(MiscellaneousPlugins OFF)

find_or_build_package_with_tag(trajectory_utils ON)

find_or_build_package_with_tag(ADVR_ROS OFF)

find_or_build_package_with_tag(ManipulationPlugin OFF)

find_or_build_package_with_tag(gazebo_magnetic_attach_plugin OFF)

find_or_build_package_with_tag(OrocosBFL OFF)

find_or_build_package_with_tag(nlopt OFF)

find_or_build_package_with_tag(Playback_mat_with_DK OFF)

find_or_build_package_with_tag(gazebo_models OFF)

find_or_build_package_with_tag(osqp OFF)

find_or_build_package_with_tag(iDynTree-3 OFF)

find_or_build_package_with_tag(fcl OFF)

find_or_build_package_with_tag(CartesianInterface ON)

find_or_build_package_with_tag(RMLTypeII OFF)

find_or_build_package_with_tag(Controller OFF)

find_or_build_package_with_tag(shared_autonomy OFF)

find_or_build_package_with_tag(tango_ros_teleoperation OFF)

find_or_build_package_with_tag(pybind11 OFF)

find_or_build_package_with_tag(MallocFinder OFF)

# -------------------------------------------
# Compile CAPSULE for the collision avoidance
# -------------------------------------------
set(SUPERBUILD_CAPSULE OFF CACHE BOOL "Flag to compile roboptim-core, moveit_compute_default_collisions, roboptim-capsule, roboptim-core-plugin-ipopt, robot_capsule_generator")
IF(SUPERBUILD_CAPSULE)
	find_or_build_package(roboptim-core)
	find_or_build_package(moveit_compute_default_collisions)
	find_or_build_package(roboptim-capsule)
	find_or_build_package(roboptim-core-plugin-ipopt)
	find_or_build_package(robot_capsule_generator)
ENDIF(SUPERBUILD_CAPSULE)
