include(YCMEPHelper)
include(FindOrBuildPackage)

ycm_ep_helper(  TomCentauroUDP
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/TomCentauroUDP.git
                TAG master
                COMPONENT external
             )
