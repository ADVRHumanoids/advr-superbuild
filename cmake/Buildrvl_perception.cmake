# vigir_terrain_classifier
include(YCMEPHelper)
include(FindOrBuildPackage)

#find_package(catkin QUIET)
find_package(roscpp QUIET)

ycm_ep_helper ( rvl_perception
                TYPE GIT
                STYLE GITHUB
                REPOSITORY dkanou/rvl_perception.git
                TAG master
                COMPONENT perception
                )
