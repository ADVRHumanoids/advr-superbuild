# centauro-simulator
include(YCMEPHelper)
include(FindOrBuildPackage)

ycm_ep_helper(  centauroLocomotor
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/centauroLocomotor.git
                TAG xbot_control_devel
                COMPONENT robots
                DEPENDS
                BUILD_COMMAND ""
		INSTALL_COMMAND ""
              )
