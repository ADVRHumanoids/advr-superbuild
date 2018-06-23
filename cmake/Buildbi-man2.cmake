# WBC_TDE
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotCore QUIET)

ycm_ep_helper(  bi-man2
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/bi-man2.git
                TAG master
                COMPONENT external
                DEPENDS XBotCore)
