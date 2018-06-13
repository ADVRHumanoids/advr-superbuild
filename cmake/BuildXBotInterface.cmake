# XBotInterface
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotLogger QUIET)
find_or_build_package(bprinter QUIET)

ycm_ep_helper(  XBotInterface
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/XBotInterface.git
                TAG master
                COMPONENT external
                DEPENDS bprinter XBotLogger
		CMAKE_CACHE_ARGS -DBUILD_TESTS:BOOL=false
	     )
