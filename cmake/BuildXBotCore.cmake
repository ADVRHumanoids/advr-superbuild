# XBotCore
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XCM QUIET)

ycm_ep_helper(  XBotCore
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/xbotcore.git
                TAG master
                COMPONENT external
		DEPENDS XCM
		CMAKE_CACHE_ARGS -DBUILD_SHARED_LIBS:BOOL=ON
                                 -DENABLE_XENO:BOOL=ON

            )
