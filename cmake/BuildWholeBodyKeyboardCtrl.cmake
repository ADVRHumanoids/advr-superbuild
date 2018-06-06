# WholeBodyKeyboardCtrl
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(OpenSoT QUIET)

ycm_ep_helper(  WholeBodyKeyboardCtrl
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/WholeBodyKeyboardCtrl.git
                TAG master
                COMPONENT external
		DEPENDS OpenSoT
             )
