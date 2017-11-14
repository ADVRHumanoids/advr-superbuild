# ecat-master-advr
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(soem_advr QUIET)

ycm_ep_helper(  ecat-master-advr
                TYPE GIT
                STYLE GITLAB_ADVRCLOUD
                REPOSITORY amargan/ecat_master_advr.git
                TAG centauro_stable
                COMPONENT external
		DEPENDS soem_advr
		CMAKE_CACHE_ARGS -DBUILD_SHARED_LIBS:BOOL=ON
                                 -DENABLE_XENO:BOOL=ON

             )
