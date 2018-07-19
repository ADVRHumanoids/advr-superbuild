include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotCore QUIET)

ycm_ep_helper(  MinimumFatigueConfiguration
                TYPE GIT
                STYLE GITHUB
		REPOSITORY ADVRHumanoids/MinimumFatigueConfiguration.git
                TAG master
                COMPONENT external
                DEPENDS XBotCore
            )
