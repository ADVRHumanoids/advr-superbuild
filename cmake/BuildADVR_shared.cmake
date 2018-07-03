# ADVR_shared
include(YCMEPHelper)
include(FindOrBuildPackage)

ycm_ep_helper(  ADVR_shared
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/ADVR_shared.git
                TAG master
                COMPONENT configs
		BUILD_COMMAND ""
		#INSTALL_COMMAND ""
            )
