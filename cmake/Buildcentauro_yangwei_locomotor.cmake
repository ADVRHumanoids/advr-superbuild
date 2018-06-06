# centauro_yangwei_locomotor
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XCM QUIET)

ycm_ep_helper(  centauro_yangwei_locomotor
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/centauro_yangwei_locomotor.git
                TAG master
                COMPONENT external
		DEPENDS XCM
             )
