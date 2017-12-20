# XCM
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotInterface QUIET)
find_or_build_package(RobotInterfaceROS QUIET)

ycm_ep_helper(  XCM
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/XCM.git
                TAG master
                COMPONENT external
		DEPENDS XBotInterface
			RobotInterfaceROS
		CMAKE_CACHE_ARGS -DBUILD_examples:BOOL=ON
             )
