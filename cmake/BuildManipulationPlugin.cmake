# ManipulationPlugin
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotCore QUIET)
find_or_build_package(ADVR_ROS QUIET)


ycm_ep_helper(  ManipulationPlugin
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/ManipulationPlugin.git
                TAG master
                COMPONENT external
		DEPENDS XBotCore
			ADVR_ROS
             )
