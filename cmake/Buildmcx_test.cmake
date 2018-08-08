# mcx_test
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XCM QUIET)

ycm_ep_helper(  mcx_test
                TYPE GIT
                STYLE GITHUB
                REPOSITORY mcx/mcx_test.git
                TAG master
                COMPONENT external
		DEPENDS XCM
             )
