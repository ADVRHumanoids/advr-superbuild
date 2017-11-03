include(YCMEPHelper)
include(FindOrBuildPackage)

ycm_ep_helper(  CentauroAlexUDP
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/CentauroAlexUDP.git
                TAG master
                COMPONENT external
             )
