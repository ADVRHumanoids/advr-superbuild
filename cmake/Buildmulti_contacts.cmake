# multi_contacts
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XCM QUIET)

ycm_ep_helper(  multi_contacts
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/multi_contacts.git
                TAG master
                COMPONENT external
		DEPENDS XCM
             )
