# rbdl 
include(YCMEPHelper)
include(FindOrBuildPackage)

ycm_ep_helper(  rbdl
                TYPE HG
                STYLE BITBUCKET
                REPOSITORY rbdl/rbdl
                TAG v2.6.0
		CMAKE_CACHE_ARGS -DRBDL_BUILD_ADDON_URDFREADER:BOOL=ON
                COMPONENT external
            )
