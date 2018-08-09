# MiscellaneousPlugins
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotCore QUIET)
find_or_build_package(Controller QUIET)

ycm_ep_helper(  shared_autonomy
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/shared_autonomy.git
                TAG master
                COMPONENT external
		DEPENDS XBotCore
                        Controller
             )
