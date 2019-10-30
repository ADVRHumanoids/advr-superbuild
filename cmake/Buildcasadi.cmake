# casadi
include(YCMEPHelper)
include(FindOrBuildPackage)


ycm_ep_helper(  casadi TYPE GIT
                STYLE GITHUB
                REPOSITORY casadi/casadi.git
                TAG master
                COMPONENT external
                CMAKE_CACHE_ARGS -DWITH_IPOPT:BOOL=ON
            )
