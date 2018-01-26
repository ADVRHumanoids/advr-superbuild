# test_peppe
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotCore QUIET)

ycm_ep_helper(  TestProjectGiuseppe
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/TestProjectGiuseppe.git
                TAG master
                COMPONENT external
                DEPENDS XBotCore
            )
