# WBC_TDE
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XCM QUIET)

ycm_ep_helper(  Pholus_demo_W
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/Pholus_demo_W.git
                TAG master
                COMPONENT external
                DEPENDS XCM)
