# test_peppe
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XCM QUIET)

ycm_ep_helper(  TestProjectGiuseppe
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/TestProjectGiuseppe.git
                TAG master
                COMPONENT external
                DEPENDS XCM
            )
