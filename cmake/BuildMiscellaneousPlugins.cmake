# MiscellaneousPlugins
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotCore QUIET)
find_or_build_package(OpenSoT QUIET)

ycm_ep_helper(  MiscellaneousPlugins
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/MiscellaneousPlugins.git
                TAG xbot3.0
                COMPONENT external
		DEPENDS XBotCore
			OpenSoT
             )
