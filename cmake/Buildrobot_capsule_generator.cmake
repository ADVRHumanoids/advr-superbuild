# robot_capsule_generator
include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(roboptim-capsule QUIET)

ycm_ep_helper(  robot_capsule_generator
                TYPE GIT
                STYLE GITHUB
                REPOSITORY ADVRHumanoids/robot_capsule_generator.git
                TAG master
                COMPONENT external
                DEPENDS roboptim-capsule
            )
