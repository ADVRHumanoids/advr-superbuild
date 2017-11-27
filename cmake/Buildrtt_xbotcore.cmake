# rtt_xbotcore
include(YCMEPHelper)
include(FindOrBuildPackage)

find_package(OROCOS-RTT QUIET)
find_package(RST_RT QUIET)


ycm_ep_helper(  rtt_xbotcore
                TYPE GIT
                STYLE GITHUB
                REPOSITORY cogimon/rtt_xbotcore.git
                TAG master
                COMPONENT robots
                DEPENDS RST_RT
            )
