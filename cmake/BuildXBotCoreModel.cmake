# XBotCoreModel
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(srdfdom_advr QUIET)

ycm_ep_helper(  XBotCoreModel
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/xbotcoremodel.git
                TAG master
                COMPONENT external
                DEPENDS srdfdom_advr
            )
