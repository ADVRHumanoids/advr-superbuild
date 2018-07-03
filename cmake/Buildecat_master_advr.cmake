# ecat_master_advr
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(soem_advr QUIET)

ycm_ep_helper(  ecat_master_advr
                TYPE GIT
                STYLE GITLAB_ADVR
                REPOSITORY xeno-ecat/ecat_master_advr.git
                TAG xeno-3
                COMPONENT external
		DEPENDS soem_advr
		CMAKE_CACHE_ARGS -DBUILD_SHARED_LIBS:BOOL=ON
                                 -DENABLE_XENO:BOOL=ON

             )
