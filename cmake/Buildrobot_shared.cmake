# robot_shared
include(YCMEPHelper)
include(FindOrBuildPackage)

ycm_ep_helper(  robot_shared
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/robot_shared.git
                TAG master
                COMPONENT configs
		BUILD_COMMAND ""
		INSTALL_COMMAND ""
            )
