include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotInterface QUIET)
find_or_build_package(OpenSoT QUIET)
find_or_build_package(CartesianInterface QUIET)

ycm_ep_helper(  CentauroDemo2019
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/CentauroDemo2019.git
                TAG master
                COMPONENT external
		DEPENDS OpenSot
			XBotInterface
			CartesianInterface
             )
