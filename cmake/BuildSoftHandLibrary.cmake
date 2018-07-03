# Web
include(YCMEPHelper)
include(FindOrBuildPackage)

ycm_ep_helper(  SoftHandLibrary
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/SoftHandLibrary.git
                TAG master
                COMPONENT .
		DEPENDS 
                INSTALL_COMMAND ""
		
            )
