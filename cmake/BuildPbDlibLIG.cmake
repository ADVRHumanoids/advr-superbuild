# PbDLib C++ Library
include(YCMEPHelper)
include(FindOrBuildPackage)

#find_or_build_package(XBotCore QUIET)
#find_package(PbDlib-LIG QUIET)

ycm_ep_helper(  PbDlibLIG
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/PbDlib-LIG.git
                TAG master
                COMPONENT external
            )


