# WBC_TDE
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotCore QUIET)

ycm_ep_helper(  Parking_Steering
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/Parking_Steering.git
                TAG master
                COMPONENT external
                DEPENDS XBotCore)
