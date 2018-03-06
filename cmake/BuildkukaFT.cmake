include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotCore QUIET)

ycm_ep_helper(  kukaFT
                TYPE GIT
                STYLE GITHUB
		REPOSITORY adrianoIIT/kukaFT.git
                TAG master
                COMPONENT external
                DEPENDS XBotCore
            )
