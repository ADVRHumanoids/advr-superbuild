# XBotDummy
include(YCMEPHelper)
include(FindOrBuildPackage)

ycm_ep_helper(  XBotDummy
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/XBotDummy.git
                TAG master
                COMPONENT external
		DEPENDS 
		
            )
