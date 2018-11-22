# pybind11
include(YCMEPHelper)
include(FindOrBuildPackage)

ycm_ep_helper(  pybind11
                TYPE GIT
                STYLE GITHUB
                REPOSITORY pybind/pybind11.git
                TAG master
                COMPONENT external
                DEPENDS 
             )
