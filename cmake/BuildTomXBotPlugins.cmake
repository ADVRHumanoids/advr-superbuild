include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotInterface QUIET)
find_or_build_package(CartesianInterface QUIET)

ycm_ep_helper(  TomXBotPlugins
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/TomXBotPlugins.git
                TAG master
                COMPONENT external
		DEPENDS XBotInterface
			CartesianInterface
             )
