# abb-yumi-ros-pkg
include(YCMEPHelper)
include(FindOrBuildPackage)

ycm_ep_helper(  abb-yumi-ros-pkg
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/abb-yumi-ros-pkg.git
                TAG master
                COMPONENT robots
                INSTALL_COMMAND ""
            )
