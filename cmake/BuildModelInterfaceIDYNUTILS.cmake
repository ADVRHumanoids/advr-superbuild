# ModelInterfaceIDYNUTILS
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(advr_humanoids_common_utils QUIET)
find_or_build_package(XBotInterface QUIET)

ycm_ep_helper(  ModelInterfaceIDYNUTILS
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/ModelInterfaceIDYNUTILS.git
                TAG master
                COMPONENT external
		DEPENDS advr_humanoids_common_utils
			XBotInterface
             )
