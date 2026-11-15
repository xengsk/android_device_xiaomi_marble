#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Security patch level
VENDOR_SECURITY_PATCH := 2026-02-01

# Inherit from xiaomi sm8450-common
include device/xiaomi/sm8450-common/BoardConfigCommon.mk

# Inherit from the proprietary version
include vendor/xiaomi/marble/BoardConfigVendor.mk

DEVICE_PATH := device/xiaomi/marble

# Assert
TARGET_OTA_ASSERT_DEVICE := marble,marblein

# OTA boot variables
BOOT_VAR_OTA_CONFIG := $(DEVICE_PATH)/ota_boot_variables.txt

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/properties/odm.prop
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/properties/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/properties/vendor.prop

# Screen density
TARGET_SCREEN_DENSITY := 440

# MIUI Camera
-include device/xiaomi/miuicamera-marble/BoardConfig.mk
