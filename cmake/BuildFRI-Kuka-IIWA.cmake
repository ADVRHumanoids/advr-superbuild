# frikuka
include(YCMEPHelper)
include(FindOrBuildPackage)

ycm_ep_helper(  FRI-Kuka-IIWA
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/FRI-Kuka-IIWA.git
                TAG master
                COMPONENT external
            )
