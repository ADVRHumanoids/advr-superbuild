include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotCore QUIET)

ycm_ep_helper(  ValveTask
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/ValveTask.git
                TAG master
                COMPONENT external
                DEPENDS XCM
            )
