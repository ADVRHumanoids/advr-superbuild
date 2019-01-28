include(YCMEPHelper)
include(FindOrBuildPackage)

ycm_ep_helper(  CentauroConfig
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/CentauroConfig.git
                TAG master
                COMPONENT configs
		BUILD_COMMAND ""
		#INSTALL_COMMAND ""
            )
