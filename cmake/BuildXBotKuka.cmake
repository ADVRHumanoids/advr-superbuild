# kuka
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(FRI_Kuka QUIET)

ycm_ep_helper(  XBotKuka
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/XBotKuka.git
                TAG master
                COMPONENT external
                DEPENDS FRI_Kuka
            )
