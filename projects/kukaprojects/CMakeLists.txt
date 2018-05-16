cmake_minimum_required(VERSION 2.8.12)

# --------------------------------------
# kukaprojects
# --------------------------------------
find_or_build_package_with_tag(kukatest OFF)
find_or_build_package_with_tag(kukaFT OFF)
find_or_build_package_with_tag(KukaDRT OFF)
#find_or_build_package_with_tag(DebrisRemovalTask OFF)
find_or_build_package_with_tag(KUKA_SelfTuningImpedance OFF)
