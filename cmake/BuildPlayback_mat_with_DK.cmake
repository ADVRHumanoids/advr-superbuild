# Playback_mat_with_DK
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotCore QUIET)

ycm_ep_helper(  Playback_mat_with_DK
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/Playback_mat_with_DK.git
                TAG master
                COMPONENT external
                DEPENDS XBotCore
             )
