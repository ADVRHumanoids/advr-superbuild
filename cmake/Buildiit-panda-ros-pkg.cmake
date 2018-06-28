# iit-panda-ros-pkg
include(YCMEPHelper)
include(FindOrBuildPackage)

ycm_ep_helper(  iit-panda-ros-pkg
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/iit-panda-ros-pkg
                TAG master
                COMPONENT robots
                INSTALL_COMMAND ""
            )
