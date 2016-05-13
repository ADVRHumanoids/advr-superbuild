# locoman_service_2
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(GYM QUIET)
find_or_build_package(locoman_utils QUIET)

ycm_ep_helper(locoman_service_2 TYPE GIT
                                STYLE GITLAB_ROBOTOLOGY 
                                REPOSITORY walkman-drc/locoman_service_2.git
                                TAG master
                                COMPONENT robots
                                DEPENDS GYM
                                        locoman_utils)
