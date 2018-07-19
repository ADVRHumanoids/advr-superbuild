# XBotYARP
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(YARP QUIET)

ycm_ep_helper(  XBotYARP
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/xbotyarp.git
                TAG master
                COMPONENT external
                DEPENDS YARP
		CMAKE_CACHE_ARGS -DBUILD_SHARED_LIBS:BOOL=ON	
            )
