# iit-teleop-ros-pkg
include(YCMEPHelper)
include(FindOrBuildPackage)

ycm_ep_helper(  iit-teleop-ros-pkg
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/iit-teleop-ros-pkg.git
                TAG master
                COMPONENT robots
                INSTALL_COMMAND ""
            )
