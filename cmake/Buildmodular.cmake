# modular
include(YCMEPHelper)
include(FindOrBuildPackage)

ycm_ep_helper(  modular
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/modular
                TAG master
                COMPONENT external
                #DEPENDS XBotCore
            )
