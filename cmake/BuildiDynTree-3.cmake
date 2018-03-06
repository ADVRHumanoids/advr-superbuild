# iDynTree
include(YCMEPHelper)
include(FindOrBuildPackage)


ycm_ep_helper(  iDynTree-3
                TYPE GIT
                STYLE GITHUB
                REPOSITORY robotology-playground/iDynTree.git
                TAG master
                COMPONENT external
                DEPENDS 
                CMAKE_CACHE_ARGS -DIDYNTREE_USES_ICUB_MAIN:BOOL=OFF
            )
