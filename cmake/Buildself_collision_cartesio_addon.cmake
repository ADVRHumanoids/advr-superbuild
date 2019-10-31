# self_collision_cartesio_addon
include(YCMEPHelper)
include(FindOrBuildPackage)


ycm_ep_helper(  self_collision_cartesio_addon
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/self_collision_cartesio_addon
                TAG master
                COMPONENT external
             )
