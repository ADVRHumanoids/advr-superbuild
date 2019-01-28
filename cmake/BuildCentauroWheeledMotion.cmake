include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(OpenSoT QUIET)
find_or_build_package(CartesianInterface QUIET)

ycm_ep_helper(  CentauroWheeledMotion
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/CentauroWheeledMotion.git
                TAG master
                COMPONENT external
		        DEPENDS OpenSot
			            CartesianInterface
             )
