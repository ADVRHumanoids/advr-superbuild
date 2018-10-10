# dynamic_reconfigure_advr
include(YCMEPHelper)
include(FindOrBuildPackage)

ycm_ep_helper(  dynamic_reconfigure_advr
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/dynamic_reconfigure_advr.git
                TAG master
                COMPONENT external                 
            )
