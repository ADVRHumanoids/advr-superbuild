include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(OpenMpC QUIET)
find_or_build_package(CartesianInterface QUIET)
find_or_build_package(dynamic_reconfigure_advr QUIET)

ycm_ep_helper(  mpl
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/mpl.git
                TAG master
                DEPENDS OpenMpC
                        CartesianInterface
                        dynamic_reconfigure_advr
                COMPONENT external
	     )
