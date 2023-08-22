# ART
PRODUCT_SYSTEM_EXT_PROPERTIES += \
dalvik.vm.dex2oat64.enabled=true \
ro.vendor.qti.am.reschedule_service=true \
ro.dex2oat_white_list=com.google.android.gms \
ro.sys.fw.dex2oat_thread_count=4 \
dalvik.vm.boot-dex2oat-cpu-set=0,1,6,7 \
dalvik.vm.boot-dex2oat-threads=4 \
dalvik.vm.dex2oat-threads=4 \
dalvik.vm.dex2oat-cpu-set=0,1,6,7 \
dalvik.vm.dex2oat-filter=speed \
dalvik.vm.image-dex2oat-cpu-set=0,1,6,7 \
dalvik.vm.image-dex2oat-filter=speed \
dalvik.vm.image-dex2oat-threads=4 \
dalvik.vm.dex2oat-minidebuginfo=false \
dalvik.vm.minidebuginfo=false

PRODUCT_SYSTEM_PROPERTIES += \
pm.dexopt.first-use=speed-profile \
pm.dexopt.secondary=speed-profile

# Speed profile services and wifi-service to reduce RAM and storage
PRODUCT_SYSTEM_SERVER_COMPILER_FILTER := speed-profile
PRODUCT_USE_PROFILE_FOR_BOOT_IMAGE := true
PRODUCT_DEX_PREOPT_BOOT_IMAGE_PROFILE_LOCATION := frameworks/base/config/boot-image-profile.txt
PRODUCT_ALWAYS_PREOPT_EXTRACTED_APK := true
USE_DEX2OAT_DEBUG := false
PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true
PRODUCT_ART_TARGET_INCLUDE_DEBUG_BUILD := false
WITH_DEXPREOPT_DEBUG_INFO := false

# SystemUI
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    dalvik.vm.systemuicompilerfilter=speed
