include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotCore QUIET)

ycm_ep_helper(  ICtask
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/ICtask.git
                TAG master
                COMPONENT external
                DEPENDS XBotCore
            )
