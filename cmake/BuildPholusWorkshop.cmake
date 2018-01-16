# QPPVM_RT_plugin
include(YCMEPHelper)
include(FindOrBuildPackage)

# If XCM is not found, the superbuild will clone it and compile it.
# XCM is the package which manages XBot RT (real-time) Plugins.
find_or_build_package(XBotCore QUIET)

ycm_ep_helper(  PholusWorkshop
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/PholusWorkshop.git
                TAG master
                COMPONENT external
		DEPENDS XCM
	      )
