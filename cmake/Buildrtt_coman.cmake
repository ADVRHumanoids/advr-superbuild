# rtt_coman
include(YCMEPHelper)
include(FindOrBuildPackage)

find_package(OROCOS-RTT QUIET)
find_package(COMAN_shared QUIET)

ycm_ep_helper(  rtt_coman
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/rtt_coman.git
                TAG master
                COMPONENT robots
                DEPENDS COMAN_shared
                        OROCOS-RTT
             )
