#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifneq ($(filter pdx234,$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))

include $(CLEAR_VARS)

# A/B builds require us to create the mount points at compile time.
# Just creating it for all cases since it does not hurt.
FIRMWARE_MOUNT_POINT := $(TARGET_OUT_VENDOR)/firmware_mnt
$(FIRMWARE_MOUNT_POINT): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating $(FIRMWARE_MOUNT_POINT)"
	@mkdir -p $(TARGET_OUT_VENDOR)/firmware_mnt

BT_FIRMWARE_MOUNT_POINT := $(TARGET_OUT_VENDOR)/bt_firmware
$(BT_FIRMWARE_MOUNT_POINT): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating $(BT_FIRMWARE_MOUNT_POINT)"
	@mkdir -p $(TARGET_OUT_VENDOR)/bt_firmware

DSP_MOUNT_POINT := $(TARGET_OUT_VENDOR)/dsp
$(DSP_MOUNT_POINT): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating $(DSP_MOUNT_POINT)"
	@mkdir -p $(TARGET_OUT_VENDOR)/dsp

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_MOUNT_POINT) $(BT_FIRMWARE_MOUNT_POINT) $(DSP_MOUNT_POINT)

WIFI_FIRMWARE_SYMLINKS := $(TARGET_OUT_VENDOR)/firmware/
$(WIFI_FIRMWARE_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating wifi firmware symlinks: $@"
	@mkdir -p $@/wlan/qca_cld/kiwi_v2
	@mkdir -p $@/kiwi
	$(hide) ln -sf /vendor/etc/wifi/regdb.bin $@/kiwi/regdb.bin
	$(hide) ln -sf /vendor/etc/wifi/bdwlan.e17 $@/kiwi/bdwlan.e17
	$(hide) ln -sf /vendor/etc/wifi/bdwlan.e30 $@/kiwi/bdwlan.e30
	$(hide) ln -sf /vendor/etc/wifi/bdwlan.e31 $@/kiwi/bdwlan.e31
	$(hide) ln -sf /data/vendor/firmware/wlanmdsp.mbn $@/wlanmdsp.otaupdate
	$(hide) ln -sf /mnt/vendor/persist/wlan_mac.bin $@/wlan/qca_cld/kiwi_v2/wlan_mac.bin
	$(hide) ln -sf /mnt/vendor/persist/wifi/kiwi_v2/WCNSS_qcom_cfg.ini $@/wlan/qca_cld/kiwi_v2/WCNSS_qcom_cfg.ini

ALL_DEFAULT_INSTALLED_MODULES += \
    $(WIFI_FIRMWARE_SYMLINKS)

endif
