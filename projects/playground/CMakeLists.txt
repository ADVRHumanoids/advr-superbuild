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

# --------------------------------------
# Compile modular_plugins
# --------------------------------------
find_or_build_package_with_tag(modular_plugins OFF)


find_or_build_package_with_tag(limit_cycle_walking OFF)

# --------------------------------------
# Compile modular
# --------------------------------------
find_or_build_package_with_tag(modular OFF)

# --------------------------------------
# MatLogger2
# --------------------------------------
find_or_build_package_with_tag(MatLogger2 OFF)

# --------------------------------------
# cartesio_planning
# --------------------------------------
find_or_build_package_with_tag(cartesio_planning OFF)

# --------------------------------------
# casadi
# --------------------------------------
find_or_build_package_with_tag(casadi OFF)

# --------------------------------------
# self_collision_cartesio_addon
# --------------------------------------
find_or_build_package_with_tag(self_collision_cartesio_addon OFF)
