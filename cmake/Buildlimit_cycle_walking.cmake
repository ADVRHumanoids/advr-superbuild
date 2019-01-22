# limit_cycle_walking
include(YCMEPHelper)
include(FindOrBuildPackage)


find_or_build_package(XCM QUIET)
find_or_build_package(OpenSoT QUIET)



ycm_ep_helper(  limit_cycle_walking TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/limit_cycle_walking.git
                TAG master
                COMPONENT external
                DEPENDS XCM OpenSoT
                #CMAKE_CACHE_ARGS -DOPENSOT_COMPILE_TESTS:BOOL=OFF
            )
