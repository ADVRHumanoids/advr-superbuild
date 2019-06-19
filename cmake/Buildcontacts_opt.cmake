include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotCore QUIET)
find_or_build_package(OpenSoT QUIET)
find_or_build_package(cartesian_interface QUIET)

ycm_ep_helper(  contacts_opt
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/contacts_opt.git
                TAG DEMO
                COMPONENT external
		DEPENDS XBotCore
			OpenSoT
			cartesian_interface
             )
