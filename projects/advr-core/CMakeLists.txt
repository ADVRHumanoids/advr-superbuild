#cmake_minimum_required(VERSION 3.0.0)
cmake_minimum_required(VERSION 2.8.12)

set(YCM_GIT_GITLAB_ADVRCLOUD_BASE_ADDRESS "ssh://git@gitlab.advrcloud.iit.it/" CACHE STRING "Address to use for ADVR cloud Gitlab git repositories" FORCE)

# ---------------------
# Compile XBotInterface
# ---------------------
find_or_build_package_with_tag(XBotInterface ON)

# ---------------------
# Compile srdfdom_advr
# ---------------------
find_or_build_package_with_tag(srdfdom_advr ON)

# ---------------------
# Compile XBotCoreModel
# ---------------------
find_or_build_package_with_tag(XBotCoreModel ON)

# ------------------
# Compile sharedlibpp
# ------------------
find_or_build_package_with_tag(sharedlibpp ON)

# -------------------------
# Compile RobotInterfaceROS
# -------------------------
find_or_build_package_with_tag(RobotInterfaceROS ON)

# -------------------------
# Compile ModelInterfaceRBDL
# -------------------------
find_or_build_package_with_tag(ModelInterfaceRBDL ON)

# -------------------------
# Compile ModelInterfaceIDYNUTILS
# -------------------------
find_or_build_package_with_tag(ModelInterfaceIDYNUTILS OFF)

# ---------------------------
# Compile RobotInterfaceDUMMY
# ---------------------------
find_or_build_package_with_tag(RobotInterfaceDUMMY ON)

# --------------------------
# Compile RobotInterfaceYARP
# --------------------------
find_or_build_package_with_tag(RobotInterfaceYARP OFF)

# ----------------------------
# Compile RobotInterfaceXBotRT
# ----------------------------
find_or_build_package_with_tag(RobotInterfaceXBotRT ON)

# -------------------
# Compile ADVR_shared
# -------------------
find_or_build_package_with_tag(ADVR_shared OFF)

# -------------------
# Compile robot_shared
# -------------------
find_or_build_package_with_tag(robot_shared OFF)

# -------------------
# Compile advr_humanoids_common_utils
# -------------------
find_or_build_package_with_tag(advr_humanoids_common_utils OFF)

# -------------------
# Compile XBotEcat
# -------------------
find_or_build_package_with_tag(XBotEcat OFF)

# -------------------
# Compile XBotEthernet
# -------------------
find_or_build_package_with_tag(XBotEthernet OFF)


# -------------------
# Compile XBotDummy
# -------------------
find_or_build_package_with_tag(XBotDummy ON)

# -------------------
# Compile WebGuiDistr
# -------------------
find_or_build_package_with_tag(WebGUIDistr ON)

# ----------------
# Compile XBotCore
# ----------------
find_or_build_package_with_tag(XBotCore ON)


# ----------------
# Compile XBotCore
# ----------------
find_or_build_package_with_tag(XBotLogger ON)
	
#find_or_build_package(soem_advr)
#find_or_build_package(walkman-master-ecat)
#find_or_build_package(ec_master_test)

# ------------------------
# Compile GazeboXBotPlugin
# ------------------------
find_or_build_package_with_tag(GazeboXBotPlugin ON)

# ----------------
# Compile EtherCAT_tools
# ----------------
find_or_build_package_with_tag(EtherCAT_tools OFF)

# ----------------
# Compile XBotYARP
# ----------------
find_or_build_package_with_tag(XBotYARP OFF)

# ----------------
# Compile XBotGUI
# ----------------
find_or_build_package_with_tag(XBotGUI OFF)

# ----------------
# Compile OpenSoT-lite
# ----------------
find_or_build_package_with_tag(OpenSoT-lite OFF)

# ----------------
# Compile OpenMpC
# ----------------
find_or_build_package_with_tag(OpenMpC OFF)

# ----------------
# Compile MiscellaneousPlugins
# ----------------
find_or_build_package_with_tag(MiscellaneousPlugins OFF)

# --------------------------------------
# Compile trajectory_utils
# --------------------------------------
find_or_build_package_with_tag(trajectory_utils ON)

# --------------------------------------
# Compile ADVR_ROS
# --------------------------------------
find_or_build_package_with_tag(ADVR_ROS OFF)

# --------------------------------------
# Compile ManipulationPlugin
# --------------------------------------
find_or_build_package_with_tag(ManipulationPlugin OFF)

# --------------------------------------
# gazebo_magnetic_attach_plugin
# --------------------------------------
find_or_build_package_with_tag(gazebo_magnetic_attach_plugin OFF)

# --------------------------------------
# orocos-bayesian-filtering
# --------------------------------------
find_or_build_package_with_tag(OrocosBFL OFF)

# --------------------------------------
# nlopt
# --------------------------------------
find_or_build_package_with_tag(nlopt OFF)

# --------------------------------------
# Playback_mat_with_DK
# --------------------------------------
find_or_build_package_with_tag(Playback_mat_with_DK OFF)

# --------------------------------------

# --------------------------------------
# gazebo_models
# --------------------------------------
find_or_build_package_with_tag(gazebo_models OFF)

# --------------------------------------
# osqp
# --------------------------------------
find_or_build_package_with_tag(osqp OFF)

# iDynTree-3
# --------------------------------------
find_or_build_package_with_tag(iDynTree-3 OFF)
