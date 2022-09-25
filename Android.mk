#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),mata)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif

include $(CLEAR_VARS)

DSP_RECOVERY_MOUNT_POINT := $(TARGET_RECOVERY_ROOT_OUT)/vendor/lib/dsp
$(DSP_RECOVERY_MOUNT_POINT):
	@echo "Creating $(DSP_RECOVERY_MOUNT_POINT)"
	@mkdir -p $@

ALL_DEFAULT_INSTALLED_MODULES += $(DSP_RECOVERY_MOUNT_POINT)
