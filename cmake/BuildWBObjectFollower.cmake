# WBObjectFollower
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XCM QUIET)

ycm_ep_helper(  WBObjectFollower
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/WBObjectFollower
                TAG master
                COMPONENT external
                DEPENDS XCM
             )
