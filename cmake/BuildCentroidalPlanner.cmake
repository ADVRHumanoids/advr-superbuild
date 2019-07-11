# CentroidalPlanner
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotInterface QUIET)
find_or_build_package(XCM QUIET)
find_or_build_package(cartesian_interface QUIET)

ycm_ep_helper(CentroidalPlanner
              TYPE GIT
              STYLE GITHUB
              REPOSITORY ADVRHumanoids/CentroidalPlanner.git
              TAG master
              COMPONENT external
	      DEPENDS XBotInterface XCM cartesian_interface
             )
