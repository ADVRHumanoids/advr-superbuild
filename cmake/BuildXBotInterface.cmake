# XBotInterface
include(YCMEPHelper)
include(FindOrBuildPackage)


ycm_ep_helper(  XBotInterface
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/XBotInterface.git
                TAG master
                COMPONENT external
		CMAKE_CACHE_ARGS -DBUILD_TESTS:BOOL=false
	     )
