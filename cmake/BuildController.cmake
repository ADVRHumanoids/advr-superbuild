# Controller
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotCore QUIET)

ycm_ep_helper(  Controller
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/Controller.git
                TAG master
                COMPONENT external
		DEPENDS XCM
             )
