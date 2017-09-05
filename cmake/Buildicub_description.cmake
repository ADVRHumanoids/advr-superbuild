# icub_description
include(YCMEPHelper)
include(FindOrBuildPackage)

ycm_ep_helper(  icub_description
                TYPE GIT
                STYLE GITLAB
                REPOSITORY git@gitlab.inria.fr:larsen-robots/icub_description.git
                TAG master
                COMPONENT robots
             )
