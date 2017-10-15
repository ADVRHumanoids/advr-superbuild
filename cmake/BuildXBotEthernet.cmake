# XBotEthernet
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(COMAN_shared QUIET)

ycm_ep_helper(  XBotEthernet
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/XBotEthernet.git
                TAG master
                COMPONENT external
		DEPENDS 
			COMAN_shared
		CMAKE_CACHE_ARGS -DBUILD_SHARED_LIBS:BOOL=ON
                                 -DENABLE_XENO:BOOL=ON

            )
