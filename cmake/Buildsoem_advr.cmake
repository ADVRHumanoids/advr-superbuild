# soem_advr
include(YCMEPHelper)
include(FindOrBuildPackage)

ycm_ep_helper(  soem_advr
                TYPE GIT
                STYLE GITLAB_ADVR
                REPOSITORY xeno-ecat/soem_advr.git
                TAG xeno-3
                COMPONENT external
		CMAKE_CACHE_ARGS -DBUILD_SHARED_LIBS:BOOL=ON
				 -DENABLE_XENO:BOOL=ON
             )
