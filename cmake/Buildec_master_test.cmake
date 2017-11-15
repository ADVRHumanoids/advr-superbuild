# ec_master_test
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(soem_advr QUIET)
find_or_build_package(walkman-master-ecat QUIET)

ycm_ep_helper(  ec_master_test
                TYPE GIT
                STYLE GITLAB_ADVRCLOUD
                REPOSITORY amargan/ec_master_test.git
                TAG xeno-3
                COMPONENT external
		DEPENDS soem_advr
			ecat-master-advr
		CMAKE_CACHE_ARGS -DBUILD_SHARED_LIBS:BOOL=ON
                                 -DENABLE_XENO:BOOL=ON

             )
