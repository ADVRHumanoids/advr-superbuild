# iit-pholus-ros-pkg
include(YCMEPHelper)
include(FindOrBuildPackage)

ycm_ep_helper(  iit-pholus-ros-pkg
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/iit-pholus-ros-pkg.git
                TAG master
                COMPONENT robots
                INSTALL_COMMAND ""
            )
