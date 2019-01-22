include(YCMEPHelper)
include(FindOrBuildPackage)

ycm_ep_helper(  xbot_msgs
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/xbot_msgs.git
                TAG master
                COMPONENT external
	     )
