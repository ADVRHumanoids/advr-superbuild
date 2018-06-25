# XBotOrocosRTT
include(YCMEPHelper)
include(FindOrBuildPackage)

find_package(OROCOS-RTT QUIET)
find_package(RST_RT QUIET)

ycm_ep_helper(  XBotOrocosRTT
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/XBotOrocosRTT
                TAG master
                COMPONENT external
        	DEPENDS OROCOS-RTT RST_RT	
             )
