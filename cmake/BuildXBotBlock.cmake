# XBotBlock
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(blockfactory QUIET)

ycm_ep_helper(  XBotBlock
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/XBotBlock
                TAG devel
                COMPONENT external
		DEPENDS blockfactory                             
            )
