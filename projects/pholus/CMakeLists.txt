cmake_minimum_required(VERSION 2.8.12)

set(YCM_GIT_GITLAB_ADVRCLOUD_BASE_ADDRESS "ssh://git@gitlab.advrcloud.iit.it/" CACHE STRING "Address to use for ADVR cloud Gitlab git repositories" FORCE)


# --------------------------
# Compile centauro-simulator
# --------------------------
find_or_build_package_with_tag(centauro-simulator ON)


# --------------------------
# Compile PholusWorkshop
# --------------------------
find_or_build_package_with_tag(PholusWorkshop ON)

# --------------------------
# Compile iit-pholus-ros-pkg
# --------------------------
find_or_build_package_with_tag(iit-pholus-ros-pkg ON)

# --------------------------
# Compile CentroidalPlanner
# --------------------------
find_or_build_package_with_tag(CentroidalPlanner OFF)

# --------------------------
# Compile robot_inertia_publisher
# --------------------------
find_or_build_package_with_tag(robot_inertia_publisher ON)

