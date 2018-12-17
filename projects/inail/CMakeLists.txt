cmake_minimum_required(VERSION 2.8.12)

# ---------------------
# Compile flying_arm model
# ---------------------
find_or_build_package_with_tag(iit-flying_arm-ros-pkg OFF)

# ---------------------
# Compile hyq-description
# ---------------------
find_or_build_package_with_tag(hyq-description OFF)

# ---------------------
# Compile milpik_node
# ---------------------
find_or_build_package_with_tag(milpik_node OFF)

# ---------------------
# Compile iit-teleop-ros-pkg
# ---------------------
find_or_build_package_with_tag(iit-teleop-ros-pkg OFF)

# ---------------------
# Compile hyqreal-description
# ---------------------
find_or_build_package_with_tag(hyqreal-description OFF)


