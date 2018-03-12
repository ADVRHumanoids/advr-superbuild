include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotCore QUIET)

ycm_ep_helper(  iXSens
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/iXSens.git
                TAG master
                COMPONENT external
                DEPENDS XBotCore
            )
