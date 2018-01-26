# QPPVM_RT_plugin
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(OpenSoT-lite QUIET)

ycm_ep_helper(  OpenMpC
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/OpenMpC.git
                TAG master
                COMPONENT external
		DEPENDS OpenSoT-lite
             )
