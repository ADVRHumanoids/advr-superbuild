# PbDLib C++ Library
include(YCMEPHelper)
include(FindOrBuildPackage)

find_package(PbDlib-LIG QUIET)

ycm_ep_helper(  PbDlib-LIG
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/PbDlib-LIG.git
                TAG master
                COMPONENT external
            )


