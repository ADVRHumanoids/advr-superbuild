# iit-kuka_lwr-ros-pkg
include(YCMEPHelper)
include(FindOrBuildPackage)

#find_or_build_package(moveit_compute_default_collisions REQUIRED QUIET)

ycm_ep_helper(  iit-kuka_lwr-ros-pkg
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/iit-kuka_lwr-ros-pkg
                TAG master
                COMPONENT robots
               # DEPENDS moveit_compute_default_collisions
                INSTALL_COMMAND ""
            )
