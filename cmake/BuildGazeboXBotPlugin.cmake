# GazeboXBotPlugin
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotCore QUIET)
find_or_build_package(XCM QUIET)

ycm_ep_helper(  GazeboXBotPlugin
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/GazeboXBotPlugin.git
                TAG master
                COMPONENT external
                DEPENDS XCM
			XBotCore
             )
