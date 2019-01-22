# hyqreal-description
include(YCMEPHelper)
include(FindOrBuildPackage)

ycm_ep_helper(  hyqreal-description
                TYPE GIT
                STYLE GITLAB
                REPOSITORY https://gitlab.advr.iit.it/dls-lab/hyqreal-description.git
                TAG master
                COMPONENT robots
                INSTALL_COMMAND ""
            )
