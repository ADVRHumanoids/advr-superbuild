# cogimon_tools
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotCore QUIET)

ycm_ep_helper(  cogimon_tools
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/cogimon_tools.git
                TAG master
                COMPONENT external
		DEPENDS XBotCore
             )
