cmake_minimum_required(VERSION 2.8.12)

# --------------------------------------
# Compile RobotRuscelli_try
# --------------------------------------
find_or_build_package_with_tag(RobotRuscelli_try OFF)

# --------------------------------------
# Compile abb-yumi-ros-pkg
# --------------------------------------
find_or_build_package_with_tag(abb-yumi-ros-pkg OFF)

# --------------------------------------
# Compile srcsim
# --------------------------------------
find_or_build_package_with_tag(srcsim OFF)

# --------------------------------------
# Compile tutorial_iros2018
# --------------------------------------
find_or_build_package_with_tag(tutorial_iros2018 OFF)

# --------------------------------------
# Compile dynamic_reconfigure_advr
# --------------------------------------
find_or_build_package_with_tag(dynamic_reconfigure_advr OFF)
