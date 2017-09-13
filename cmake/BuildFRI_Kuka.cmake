# frikuka
include(YCMEPHelper)
include(FindOrBuildPackage)

ycm_ep_helper(  FRI_Kuka
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/FRI_Kuka.git
                TAG master
                COMPONENT external
            )
