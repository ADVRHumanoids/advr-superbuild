#cmake_minimum_required(VERSION 3.0.0)
cmake_minimum_required(VERSION 2.8.12)

set(YCM_GIT_GITLAB_ADVRCLOUD_BASE_ADDRESS "ssh://git@gitlab.advrcloud.iit.it/" CACHE STRING "Address to use for ADVR cloud Gitlab git repositories" FORCE)

# ---------------------
# Compile XBotInterface
# ---------------------
find_or_build_package_with_tag(XBotInterface ON)

# -------------------------
# Compile RobotInterfaceROS
# -------------------------
find_or_build_package_with_tag(RobotInterfaceROS ON)

# -------------------------
# Compile ModelInterfaceRBDL
# -------------------------
find_or_build_package_with_tag(ModelInterfaceRBDL ON)

# ---------------------------
# Compile RobotInterfaceDUMMY
# ---------------------------
find_or_build_package_with_tag(RobotInterfaceDUMMY ON)

# ----------------------------
# Compile RobotInterfaceXBotRT
# ----------------------------
find_or_build_package_with_tag(RobotInterfaceXBotRT ON)

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
	
# ------------------------
# Compile GazeboXBotPlugin
# ------------------------
find_or_build_package_with_tag(GazeboXBotPlugin ON)

# -------------------
# Compile ADVR_shared
# -------------------
find_or_build_package_with_tag(ADVR_shared ON)
