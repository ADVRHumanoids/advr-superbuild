# XBotEcat
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(soem_advr QUIET)
find_or_build_package(ecat_master_advr QUIET)
find_or_build_package(XBotCore QUIET)

ycm_ep_helper(  XBotEcat
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/XBotEcat.git
                TAG master
                COMPONENT external
		DEPENDS 
			soem_advr
			ecat_master_advr			
			XBotCore
		CMAKE_CACHE_ARGS -DBUILD_SHARED_LIBS:BOOL=ON
                                 -DENABLE_XENO:BOOL=ON

            )
