# CBCBackEnd
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(OpenSoT QUIET)


ycm_ep_helper(  CBCBackEnd TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/CBCBackEnd.git
                TAG devel
                COMPONENT external
                DEPENDS OpenSoT
                CMAKE_CACHE_ARGS -DCBCBACKEND_COMPILE_TESTS:BOOL=OFF
            )
