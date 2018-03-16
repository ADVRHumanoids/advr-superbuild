include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotCore QUIET)

ycm_ep_helper(  EMG
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/EMG.git
                TAG master
                COMPONENT external
                DEPENDS XBotCore
            )
