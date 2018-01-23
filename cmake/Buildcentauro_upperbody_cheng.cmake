# centauro_upperbody_cheng
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotCore QUIET)

ycm_ep_helper(  centauro_upperbody_cheng
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/centauro_upperbody_cheng.git
                TAG master
                COMPONENT external
		DEPENDS XBotCore
			
             )
