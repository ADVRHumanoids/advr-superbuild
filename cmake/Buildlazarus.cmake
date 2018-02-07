# lazarus
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(XBotCore QUIET)

ycm_ep_helper(  lazarus
                TYPE GIT
                STYLE GITHUB
                REPOSITORY CentroEPiaggio/lazarus.git
                TAG master
                COMPONENT external
                DEPENDS XBotCore
            )
