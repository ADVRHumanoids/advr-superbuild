# WBC_TDE
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotCore QUIET)

ycm_ep_helper(  traj6d
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/traj6d.git
                TAG master
                COMPONENT external
                DEPENDS XBotCore)
