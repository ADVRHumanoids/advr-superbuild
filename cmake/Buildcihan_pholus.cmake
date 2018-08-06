# cihan_pholus
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XCM QUIET)

ycm_ep_helper(  cihan_pholus
                TYPE GIT
                STYLE GITLAB
                REPOSITORY git@gitlab.com:ases200q2/cihan_pholus.git
                TAG master
                COMPONENT external
		DEPENDS XCM
             )
