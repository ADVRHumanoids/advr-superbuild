# gazebo_models 
include(YCMEPHelper)
include(FindOrBuildPackage)

ycm_ep_helper(  gazebo_models
                TYPE HG
                STYLE BITBUCKET
                REPOSITORY osrf/gazebo_models
                TAG default
                COMPONENT robots
            )
