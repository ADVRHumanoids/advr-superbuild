# RST
include(YCMEPHelper)
include(FindOrBuildPackage)

ycm_ep_helper(  RST
                TYPE GIT
                STYLE NONE 
                REPOSITORY https://code.cor-lab.org/git/rst.git.proto
                TAG 0.14
                COMPONENT RSB
            )
