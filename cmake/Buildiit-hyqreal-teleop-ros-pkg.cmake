# iit-hyqreal-teleop-ros-pkg
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(hyqreal-description QUIET)
find_or_build_package(iit-teleop-ros-pkg QUIET)

ycm_ep_helper(  iit-hyqreal-teleop-ros-pkg
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/iit-hyqreal-teleop-ros-pkg.git
                TAG master
                COMPONENT robots
                DEPENDS hyqreal-description
                        iit-teleop-ros-pkg
                INSTALL_COMMAND ""
            )
