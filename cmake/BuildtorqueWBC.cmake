include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotCore QUIET)

ycm_ep_helper(  torqueWBC
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/torqueWBC.git
                TAG master
                COMPONENT external
                DEPENDS XBotCore
            )
