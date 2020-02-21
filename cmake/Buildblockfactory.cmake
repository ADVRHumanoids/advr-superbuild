# blockfactory
include(YCMEPHelper)
include(FindOrBuildPackage)

ycm_ep_helper(  blockfactory
                TYPE GIT
                STYLE GITHUB
                REPOSITORY /robotology/blockfactory
                TAG master
                COMPONENT external
		CMAKE_CACHE_ARGS -DUSES_MATLAB:BOOL=ON		 
	     )