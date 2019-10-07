# cartesio_planning
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(MatLogger2 QUIET)
find_or_build_package(CartesianInterface QUIET)

ycm_ep_helper(cartesio_planning
              TYPE GIT
              STYLE GITHUB
              REPOSITORY ADVRHumanoids/cartesio_planning.git
              TAG master
              COMPONENT external
	      DEPENDS CartesianInterface MatLogger2
             )
