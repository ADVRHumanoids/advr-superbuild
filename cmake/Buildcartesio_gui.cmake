# cartesio_gui
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotInterface QUIET)
find_or_build_package(cartesian_interface QUIET)

ycm_ep_helper(  cartesio_gui
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/cartesio_gui.git
                TAG master
                COMPONENT external
		DEPENDS XBotInterface
			cartesian_interface
		CMAKE_CACHE_ARGS -DBUILD_SHARED_LIBS:BOOL=ON
				 -DBUILD_examples:BOOL=OFF
                                 
            )
