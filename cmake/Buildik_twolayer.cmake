# WBC_TDE
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotCore QUIET)

ycm_ep_helper(  ik_twolayer
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/ik_twolayer.git
                TAG master
                COMPONENT external
                DEPENDS XCM)
