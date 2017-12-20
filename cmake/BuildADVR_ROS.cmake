# ADVR_ROS
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(trajectory_utils QUIET)

ycm_ep_helper(  ADVR_ROS
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/ADVR_ROS.git
                TAG master
                COMPONENT external
		DEPENDS trajectory_utils

             )
