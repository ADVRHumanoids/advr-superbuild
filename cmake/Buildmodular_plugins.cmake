# modular_plugins
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotCore QUIET)

ycm_ep_helper(  modular_plugins
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/modular_plugins
                TAG master
                COMPONENT external
                #DEPENDS XBotCore
            )
