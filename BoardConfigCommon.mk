
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Mainline
include build/make/target/board/BoardConfigMainlineCommon.mk
TARGET_USERIMAGES_USE_EXT4 := false
TARGET_NO_RECOVERY := false
TARGET_LMKD_STATS_LOG := false
BOARD_AVB_ROLLBACK_INDEX := 0

BUILD_BROKEN_DUP_RULES := true

BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

BOARD_VENDOR := sony

COMMON_PATH := device/sony/sm8550-common

TARGET_BUILD_FULLY_SIGN := true
include vendor/parasite/signatures/BoardConfigSign.mk

# A/B
AB_OTA_UPDATER := true

AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    init_boot \
    product \
    system \
    system_dlkm \
    system_ext \
    vbmeta \
    vbmeta_system \
    odm \
    recovery \
    vendor \
    vendor_dlkm \
    vendor_boot

TARGET_OTA_ADDITIONAL_OPTIONS := \
    --enable_puffdiff=true \
    --enable_zucchini=true \
    --enable_lz4diff=true \
    --enable_vabc_xor=true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv9-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := kryo300

# Boot
BOARD_BOOT_HEADER_VERSION := 4
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_RAMDISK_USE_LZ4 := true

# DTB
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_USES_QCOM_MERGE_DTBS_SCRIPT := true
TARGET_NEEDS_DTBOIMAGE := true
TARGET_MERGE_DTBS_WILDCARD ?= kalama*base

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := kalama
TARGET_NO_BOOTLOADER := true

# Init Boot
BOARD_INIT_BOOT_HEADER_VERSION := 4
BOARD_MKBOOTIMG_INIT_ARGS += --header_version $(BOARD_INIT_BOOT_HEADER_VERSION)

# Kernel
BOARD_KERNEL_CMDLINE += video=vfb:640x400,bpp=32,memsize=3072000
BOARD_KERNEL_CMDLINE += nosoftlockup
BOARD_BOOTCONFIG := \
    androidboot.hardware=qcom \
    androidboot.memcg=1 \
    loop.max_part=8 \
    androidboot.usbcontroller=a600000.dwc3

BOARD_USES_GENERIC_KERNEL_IMAGE := true
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_IMAGE_NAME := Image

TARGET_KERNEL_SOURCE := kernel/sony/sm8550
TARGET_KERNEL_CONFIG := \
    gki_defconfig \
    vendor/kalama_GKI.config \
    vendor/sony/kalama_GKI.config \
    vendor/debugfs.config

BOARD_SYSTEM_KERNEL_MODULES_LOAD := $(strip $(shell cat $(COMMON_PATH)/modules.load.system_dlkm))
BOARD_VENDOR_KERNEL_MODULES_BLOCKLIST_FILE := $(COMMON_PATH)/modules.blocklist
BOARD_VENDOR_KERNEL_MODULES_LOAD := $(strip $(shell cat $(COMMON_PATH)/modules.load))
BOARD_VENDOR_RAMDISK_KERNEL_MODULES_BLOCKLIST_FILE := $(BOARD_VENDOR_KERNEL_MODULES_BLOCKLIST_FILE)
BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD := $(strip $(shell cat $(COMMON_PATH)/modules.load.vendor_boot))
BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD := $(strip $(shell cat $(COMMON_PATH)/modules.load.recovery))
BOOT_KERNEL_MODULES := $(strip $(shell cat $(COMMON_PATH)/modules.load.recovery $(COMMON_PATH)/modules.include.vendor_ramdisk))
SYSTEM_KERNEL_MODULES := $(strip $(shell cat $(COMMON_PATH)/modules.include.system_dlkm))

# Kernel Modules
TARGET_KERNEL_EXT_MODULE_ROOT := kernel/sony/sm8550-modules
TARGET_KERNEL_EXT_MODULES := \
    qcom/opensource/mmrm-driver \
    qcom/opensource/mm-drivers/hw_fence \
    qcom/opensource/mm-drivers/msm_ext_display \
    qcom/opensource/mm-drivers/sync_fence \
    qcom/opensource/audio-kernel \
    qcom/opensource/camera-kernel \
    qcom/opensource/dataipa/drivers/platform/msm \
    qcom/opensource/datarmnet/core \
    qcom/opensource/datarmnet-ext/aps \
    qcom/opensource/datarmnet-ext/offload \
    qcom/opensource/datarmnet-ext/shs \
    qcom/opensource/datarmnet-ext/perf \
    qcom/opensource/datarmnet-ext/perf_tether \
    qcom/opensource/datarmnet-ext/sch \
    qcom/opensource/datarmnet-ext/wlan \
    qcom/opensource/securemsm-kernel \
    qcom/opensource/display-drivers/msm \
    qcom/opensource/eva-kernel \
    qcom/opensource/video-driver \
    qcom/opensource/graphics-kernel \
    qcom/opensource/wlan/platform \
    qcom/opensource/wlan/qcacld-3.0/.kiwi_v2 \
    qcom/opensource/bt-kernel \
    nxp/opensource/driver \
    cirrus/kernel-modules/cs35l45/sound/soc/codecs \
    cirrus/kernel-modules/cs40l25/drivers/misc \
    cirrus/kernel-modules/cs40l25/sound/soc/codecs \
    semc/hardware/camera-kernel-module/camera_sync \
    semc/hardware/camera-kernel-module/hdmi_detect \
    semc/hardware/camera-kernel-module/slg51000_regulator \
    semc/hardware/camera-kernel-module/sony_camera \
    semc/hardware/charge/kernel-modules/battchg_ext \
    semc/hardware/charge/kernel-modules/battman_dbg \
    semc/hardware/kernel-modules/misc/et6xx \
    semc/hardware/kernel-modules/misc/ldo_vibrator \
    semc/hardware/kernel-modules/msm/lxs_ts

# Platform
TARGET_BOARD_PLATFORM := kalama

# Qcom
BOARD_USES_QCOM_HARDWARE := true

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "qualcomm-hidl"

# Audio
AUDIO_FEATURE_ENABLED_DLKM := true
AUDIO_FEATURE_ENABLED_EXTENDED_COMPRESS_FORMAT := true
AUDIO_FEATURE_ENABLED_GEF_SUPPORT := true
AUDIO_FEATURE_ENABLED_GKI := true
AUDIO_FEATURE_ENABLED_INSTANCE_ID := true
AUDIO_FEATURE_ENABLED_AGM_HIDL := true
AUDIO_FEATURE_ENABLED_LSM_HIDL := true
AUDIO_FEATURE_ENABLED_PAL_HIDL := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
AUDIO_FEATURE_ENABLED_SSR := true
AUDIO_FEATURE_ENABLED_SVA_MULTI_STAGE := true
BOARD_SUPPORTS_OPENSOURCE_STHAL := true
BOARD_SUPPORTS_SOUND_TRIGGER := true
BOARD_USES_ALSA_AUDIO := true
TARGET_PROVIDES_AUDIO_HAL := true
TARGET_USES_QCOM_MM_AUDIO := true

# FM
BOARD_HAVE_QCOM_FM := true

# Filesystem
TARGET_FS_CONFIG_GEN := $(COMMON_PATH)/config.fs

# Health
TARGET_HEALTH_CHARGING_CONTROL_CHARGING_PATH := /sys/class/battchg_ext/smart_charging_interruption
TARGET_HEALTH_CHARGING_CONTROL_CHARGING_ENABLED := 0
TARGET_HEALTH_CHARGING_CONTROL_CHARGING_DISABLED := 1

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += \
    $(COMMON_PATH)/framework_compatibility_matrix.xml \
    hardware/qcom-caf/common/vendor_framework_compatibility_matrix.xml \
    vendor/lineage/config/device_framework_matrix.xml
DEVICE_FRAMEWORK_MANIFEST_FILE += $(COMMON_PATH)/framework_manifest.xml
DEVICE_MATRIX_FILE += hardware/qcom-caf/common/compatibility_matrix.xml
DEVICE_MANIFEST_FILE += \
    $(COMMON_PATH)/manifest.xml \
    $(COMMON_PATH)/network_manifest.xml \
    hardware/qcom-caf/sm8550/audio/primary-hal/configs/common/manifest_non_qmaa.xml \
    hardware/qcom-caf/sm8550/audio/primary-hal/configs/common/manifest_non_qmaa_extn.xml

# Lineage Touch HAL
$(call soong_config_set,sony_touch,panel,lxs_ts)

# Allow LZ4 compression
BOARD_RAMDISK_USE_LZ4 := true

# Metadata
BOARD_USES_METADATA_PARTITION := true

# Partitions
BOARD_PRODUCTIMAGE_MINIMAL_PARTITION_RESERVED_SIZE := false
-include vendor/lineage/config/BoardConfigReservedSize.mk
BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
BOARD_INIT_BOOT_IMAGE_PARTITION_SIZE := 8388608
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 100663296
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 104857600
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_SUPER_PARTITION_GROUPS := dynamic_partitions
BOARD_SUPER_PARTITION_SIZE := 14495514624
BOARD_DYNAMIC_PARTITIONS_SIZE := $(shell expr $(BOARD_SUPER_PARTITION_SIZE) - 4194304)
BOARD_DYNAMIC_PARTITIONS_PARTITION_LIST := product system system_dlkm vendor odm system_ext vendor_dlkm
BOARD_FLASH_BLOCK_SIZE := $(shell expr $(BOARD_KERNEL_PAGESIZE) \* 64)

BOARD_PARTITION_LIST := $(call to-upper, $(BOARD_DYNAMIC_PARTITIONS_PARTITION_LIST))
$(foreach p, $(BOARD_PARTITION_LIST), $(eval BOARD_$(p)IMAGE_FILE_SYSTEM_TYPE := erofs))
$(foreach p, $(BOARD_PARTITION_LIST), $(eval TARGET_COPY_OUT_$(p) := $(call to-lower, $(p))))
$(foreach p, $(BOARD_PARTITION_LIST), $(eval BOARD_$(p)IMAGE_PARTITION_RESERVED_SIZE := 786432000))

# Compression
PRODUCT_FS_COMPRESSION := 1
BOARD_EROFS_COMPRESSOR := lz4hc,12
BOARD_EROFS_PCLUSTER_SIZE := 262144

# Power
TARGET_POWER_LIBPERFMGR_MODE_EXTENSION_LIB := //$(COMMON_PATH):libperfmgr-ext-sony-sm8550

# PowerShare
$(call soong_config_set, SONY_POWERSHARE, WIRELESS_TX_ENABLE_PATH, /sys/class/qcom-battery/wireless_boost_en)

# Properties
TARGET_ODM_PROP += $(COMMON_PATH)/odm.prop
TARGET_PRODUCT_PROP += $(COMMON_PATH)/product.prop
TARGET_SYSTEM_PROP += $(COMMON_PATH)/system.prop
TARGET_VENDOR_PROP += $(COMMON_PATH)/vendor.prop
TARGET_SYSTEM_EXT_PROP += $(COMMON_PATH)/system_ext.prop

# Recovery
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_EXCLUDE_KERNEL_FROM_RECOVERY_IMAGE := true
TARGET_RECOVERY_FSTAB := $(COMMON_PATH)/rootdir/fstab.default
TARGET_RECOVERY_PIXEL_FORMAT := BGRA_8888
TARGET_USERIMAGES_USE_F2FS := true

# RIL
ENABLE_VENDOR_RIL_SERVICE := true

# Security patch level
BOOT_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)
VENDOR_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)

# Sepolicy
include device/qcom/sepolicy_vndr/SEPolicy.mk
include hardware/sony/sepolicy/qti/SEPolicy.mk
include device/lineage/sepolicy/libperfmgr/sepolicy.mk
include packages/apps/KProfiles/sepolicy.mk

# Verified Boot
BOARD_AVB_ENABLE := true
ifneq ($(TARGET_BUILD_FULLY_SIGN),true)
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
TARGET_AVB_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
TARGET_AVB_ALGORITHM := SHA256_RSA4096
else
TARGET_AVB_KEY_PATH := $(PARASITE_AVB_KEY_PATH)
TARGET_AVB_ALGORITHM := SHA256_RSA4096

BOARD_AVB_KEY_PATH := $(TARGET_AVB_KEY_PATH)
BOARD_AVB_ALGORITHM :=  $(TARGET_AVB_ALGORITHM)
endif
BOARD_MOVE_GSI_AVB_KEYS_TO_VENDOR_BOOT := true

BOARD_AVB_BOOT_KEY_PATH := $(TARGET_AVB_KEY_PATH)
BOARD_AVB_BOOT_ALGORITHM := $(TARGET_AVB_ALGORITHM)
BOARD_AVB_BOOT_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_BOOT_ROLLBACK_INDEX_LOCATION := 3

BOARD_AVB_INIT_BOOT_KEY_PATH := $(TARGET_AVB_KEY_PATH)
BOARD_AVB_INIT_BOOT_ALGORITHM := $(TARGET_AVB_ALGORITHM)
BOARD_AVB_INIT_BOOT_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_INIT_BOOT_ROLLBACK_INDEX_LOCATION := 4

BOARD_AVB_RECOVERY_KEY_PATH := $(TARGET_AVB_KEY_PATH)
BOARD_AVB_RECOVERY_ALGORITHM := $(TARGET_AVB_ALGORITHM)
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

BOARD_AVB_VBMETA_SYSTEM := system system_dlkm system_ext product
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := $(TARGET_AVB_KEY_PATH)
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := $(TARGET_AVB_ALGORITHM)
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 2

BOARD_AVB_VENDOR_BOOT_KEY_PATH := $(TARGET_AVB_KEY_PATH)
BOARD_AVB_VENDOR_BOOT_ALGORITHM := $(TARGET_AVB_ALGORITHM)
BOARD_AVB_VENDOR_BOOT_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VENDOR_BOOT_ROLLBACK_INDEX_LOCATION := 6

# WiFi
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_DEFAULT := qca_cld3
CONFIG_IEEE80211AX := true
WIFI_DRIVER_STATE_CTRL_PARAM := "/dev/wlan"
WIFI_DRIVER_STATE_OFF := "OFF"
WIFI_DRIVER_STATE_ON := "ON"
WIFI_HIDL_FEATURE_DUAL_INTERFACE := true
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true
WPA_SUPPLICANT_VERSION := VER_0_8_X

-include vendor/sony/sm8550-common/BoardConfigVendor.mk
