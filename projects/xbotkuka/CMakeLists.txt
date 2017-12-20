cmake_minimum_required(VERSION 2.8.12)

# --------------------------------------
# xbotkuka
# --------------------------------------
find_or_build_package_with_tag(iit-kuka_lwr-ros-pkg ON)
find_or_build_package_with_tag(XBotKuka ON)
find_or_build_package_with_tag(FRI_Kuka ON)
