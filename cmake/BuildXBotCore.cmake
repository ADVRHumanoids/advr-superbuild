# XBotCore
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotInterface QUIET)
find_or_build_package(xbot_msgs QUIET)

ycm_ep_helper(  XBotCore
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/xbotcore.git
                TAG master
                COMPONENT external
		DEPENDS XBotInterface
			xbot_msgs
		CMAKE_CACHE_ARGS -DBUILD_SHARED_LIBS:BOOL=ON
				 -DBUILD_examples:BOOL=OFF
                                 
            )
