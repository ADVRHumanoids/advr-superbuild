# orocos_opensot_ik
include(YCMEPHelper)
include(FindOrBuildPackage)

find_package(OROCOS-RTT QUIET)
find_package(rtt-core-extensions QUIET)
find_package(OpenSoT QUIET)


ycm_ep_helper(  orocos_opensot_ik
                TYPE GIT
                STYLE GITHUB
                REPOSITORY cogimon/orocos_opensot_ik.git
                TAG master
                COMPONENT external
                DEPENDS rtt-core-extensions 
                        OpenSoT
            )
