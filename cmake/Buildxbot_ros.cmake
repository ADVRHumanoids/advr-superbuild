include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(xbot_msgs QUIET)
find_or_build_package(XBotInterface QUIET)
find_or_build_package(matlogger2 QUIET)

ycm_ep_helper(  xbot_ros
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/xbot_ros.git
                TAG master
                COMPONENT external
                DEPENDS xbot_msgs
                        XBotInterface
	     )
