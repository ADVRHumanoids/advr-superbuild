include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotCore QUIET)

ycm_ep_helper(  KukaDRT
                TYPE GIT
                STYLE GITHUB
		REPOSITORY ADVRHumanoids/KukaDRT.git
                TAG master
                COMPONENT external
                DEPENDS XBotCore
            )
