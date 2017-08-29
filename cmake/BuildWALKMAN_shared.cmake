# WALKMAN_shared
include(YCMEPHelper)
include(FindOrBuildPackage)

ycm_ep_helper(  WALKMAN_shared
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/WALKMAN_shared.git
                TAG master
                COMPONENT configs
		BUILD_COMMAND ""
		INSTALL_COMMAND ""
            )
