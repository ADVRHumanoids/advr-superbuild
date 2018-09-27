cmake_minimum_required(VERSION 2.8.12)

set(YCM_GIT_GITLAB_ADVRCLOUD_BASE_ADDRESS "ssh://git@gitlab.advrcloud.iit.it/" CACHE STRING "Address to use for ADVR cloud Gitlab git repositories" FORCE)


# --------------------------
# Compile centauro-simulator
# --------------------------
find_or_build_package_with_tag(centauro-simulator OFF)

# -------------------------
# Compile RobotInterfaceROS_CustomCmndInterface
# -------------------------
find_or_build_package_with_tag(RobotInterfaceROS_CustomCmndInterface OFF)

# -------------------------
# Compile CentauroUDP
# -------------------------
find_or_build_package_with_tag(CentauroUDP OFF)

# -------------------------
# Compile centauro_bonn_review_plugins
# -------------------------
find_or_build_package_with_tag(centauro_bonn_review_plugins OFF)

# -------------------------
# Compile KeyboardControl
# -------------------------
find_or_build_package_with_tag(KeyboardControl OFF)

# -------------------------
# Compile KeyboardControl
# -------------------------
find_or_build_package_with_tag(InverseKinematics OFF)

# -------------------------
# QPPVM_RT_plugin
# -------------------------
find_or_build_package_with_tag(qppvm OFF)

# -------------------------
# Artificial Potential Fields
# -------------------------
find_or_build_package_with_tag(ArtificialPotentialFields OFF)

# ---------------------
# Compile QPBuilder
# ---------------------
find_or_build_package_with_tag(QPBuilder OFF)

# ---------------------
# Compile ik_twolayer
# ---------------------
find_or_build_package_with_tag(ik_twolayer OFF)

# ---------------------
# Compile MpcLocomotion
# ---------------------
find_or_build_package_with_tag(MpcLocomotion OFF)

# ---------------------
# Compile QPOases
# ---------------------
find_or_build_package_with_tag(QPOases OFF)

# ---------------------
# Compile bi-man2 
# ---------------------
find_or_build_package_with_tag(bi-man2 OFF)

# ---------------------
# Compile traj6d 
# ---------------------
find_or_build_package_with_tag(traj6d OFF)

#-----------------------
#centauroLocomotor
#----------------------
find_or_build_package_with_tag(centauroLocomotor OFF)

# --------------------------------------
# Compile Parking_Steering
# --------------------------------------
find_or_build_package_with_tag(Parking_Steering OFF)

# --------------------------------------
# Compile whole body keyboard control
# --------------------------------------
find_or_build_package_with_tag(WholeBodyKeyboardCtrl OFF)

# --------------------------------------
# Compile Centauro upperbody teleoperation control (cheng)
# --------------------------------------

find_or_build_package_with_tag(centauro_upperbody_cheng OFF)

# --------------------------------------
# Compile iXSens (cheng)
# --------------------------------------

find_or_build_package_with_tag(iXSens OFF)

# --------------------------------------
# Compile EMG
# --------------------------------------

find_or_build_package_with_tag(EMG OFF)


# --------------------------------------
# Compile torqueWBC
# --------------------------------------

find_or_build_package_with_tag(torqueWBC OFF)

# --------------------------------------
# Compile CentauroAlexUDP
# --------------------------------------
find_or_build_package_with_tag(CentauroAlexUDP OFF)

# --------------------------------------
# Compile centauro_tools
# --------------------------------------
find_or_build_package_with_tag(centauro_tools OFF)

find_or_build_package_with_tag(WBObjectFollower OFF)

find_or_build_package_with_tag(CentauroDemo OFF)

# ---------------------
# Compile Yangwei Locomotion module
# ---------------------
find_or_build_package_with_tag(centauro_yangwei_locomotor OFF)

# ---------------------
# Compile Cihan Pholus module
# ---------------------
find_or_build_package_with_tag(cihan_pholus OFF)

# ---------------------
# Compile Michael Pholus module
# ---------------------
find_or_build_package_with_tag(mcx_test OFF)
