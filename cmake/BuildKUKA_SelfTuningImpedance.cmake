include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotCore QUIET)

ycm_ep_helper(  KUKA_SelfTuningImpedance
                TYPE GIT
                STYLE GITHUB
		REPOSITORY ADVRHumanoids/KUKA_SelfTuningImpedance.git
                TAG master
                COMPONENT external
                DEPENDS XBotCore
            )
