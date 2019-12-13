include(YCMEPHelper)
include(FindOrBuildPackage)

ycm_ep_helper(  nimbro_network
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/nimbro_network.git
                TAG develop
                COMPONENT network
	     )
