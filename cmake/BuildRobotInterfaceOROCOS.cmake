# RobotInterfaceOROCOS
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotInterface QUIET)
find_package(RTS_RT QUIET)
find_package(OROCOS-RTT QUIET)

ycm_ep_helper(  RobotInterfaceOROCOS
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/RobotInterfaceOROCOS.git
                TAG master
                COMPONENT external
		DEPENDS XBotInterface
                      RST_RT
                      OROCOS-RTT
             )
