# Web
include(YCMEPHelper)
include(FindOrBuildPackage)

ycm_ep_helper(  WebGUIDistr
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/WebGUIDistr.git
                TAG master
                COMPONENT .
		DEPENDS 
		
            )
