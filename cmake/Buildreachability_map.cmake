include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotCore QUIET)

ycm_ep_helper(  reachability_map
                TYPE GIT
                STYLE GITHUB
		REPOSITORY ADVRHumanoids/reachability_map.git
                TAG master
                COMPONENT external
                DEPENDS XBotCore
            )
