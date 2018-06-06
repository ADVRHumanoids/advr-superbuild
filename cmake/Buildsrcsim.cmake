# srcsim
include(YCMEPHelper)
include(FindOrBuildPackage)

ycm_ep_helper(  srcsim 
                TYPE HG
                STYLE BITBUCKET
                REPOSITORY osrf/srcsim
                TAG default
                COMPONENT external
            )
