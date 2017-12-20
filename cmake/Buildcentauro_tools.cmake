# centauro_tools
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(OpenSoT-lite QUIET)

ycm_ep_helper(  centauro_tools
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/centauro_tools.git
                TAG master
                COMPONENT external
		DEPENDS OpenSoT-lite
             )
