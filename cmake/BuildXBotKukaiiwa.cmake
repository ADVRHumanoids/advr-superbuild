# kuka
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(FRI_Kuka QUIET)

ycm_ep_helper(  XBotKukaiiwa
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/XBotKukaiiwa.git
                TAG master
                COMPONENT external
                DEPENDS FRI-Kuka-IIWA
            )
