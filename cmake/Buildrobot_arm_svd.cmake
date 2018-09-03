# robot_arm_svd
include(YCMEPHelper)
include(FindOrBuildPackage)

find_package(OROCOS-RTT QUIET)
find_package(rtt-core-extensions QUIET)


ycm_ep_helper(  robot_arm_svd
                TYPE GIT
                STYLE GITHUB
                REPOSITORY Pouya-moh/robot_arm_svd
                TAG master
                COMPONENT external
                DEPENDS rtt-core-extensions
            )
