include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotLogger QUIET)

ycm_ep_helper(  tango_ros_teleoperation
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/tango_ros_teleoperation.git
                TAG master
                COMPONENT external
		DEPENDS XBotLogger
             )
