# RobotInterfaceYARP
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(YARP QUIET)
find_or_build_package(XBotInterface QUIET)

ycm_ep_helper(  RobotInterfaceYARP
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/RobotInterfaceYARP.git
                TAG master
                COMPONENT external
                DEPENDS YARP
			XBotInterface
            )
