# rbdl 
include(YCMEPHelper)
include(FindOrBuildPackage)

ycm_ep_helper(  segway_v3
                TYPE GIT
                STYLE GITHUB
                REPOSITORY StanleyInnovation/segway_v3.git
                TAG master
                COMPONENT external
            )
