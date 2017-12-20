# OpenSoT
include(YCMEPHelper)
include(FindOrBuildPackage)


ycm_ep_helper(  OrocosBFL TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/orocos-bayesian-filtering.git
                TAG master
                COMPONENT external
                DEPENDS  
               # CMAKE_CACHE_ARGS -DOPENSOT_COMPILE_TESTS:BOOL=OFF
            )
