# XBotCore
include(YCMEPHelper)
include(FindOrBuildPackage)

ycm_ep_helper(  XBotCore-interfaces
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/XBotCore-interfaces.git
                TAG master 
                COMPONENT external 
              )
