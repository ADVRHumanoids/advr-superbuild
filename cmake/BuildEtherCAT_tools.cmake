# EtherCAT_tools
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotCore QUIET)


ycm_ep_helper(  EtherCAT_tools
                TYPE GIT
                STYLE GITLAB_ADVRCLOUD
                REPOSITORY advr_humanoids/ethercat_tools.git
                TAG master
                COMPONENT external
		DEPENDS XBotCore
             )
