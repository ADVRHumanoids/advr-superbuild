# QPPVM_RT_plugin
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotCore QUIET)
find_or_build_package(OpenSoT-lite QUIET)

ycm_ep_helper(  qppvm
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/qppvm.git
                TAG master
                COMPONENT external
		DEPENDS XBotCore
			OpenSoT-lite
             )
