#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8150-common
include device/xiaomi/sm8150-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/nabu

BUILD_BROKEN_DUP_RULES := true

# Display
TARGET_SCREEN_DENSITY := 360

# Sepolicy for HwControl Hal
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += $(DEVICE_PATH)/aidl/hwcontrol/sepolicy/private
SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += $(DEVICE_PATH)/aidl/hwcontrol/sepolicy/public
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/aidl/hwcontrol/sepolicy/vendor

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit from the proprietary version
include vendor/xiaomi/nabu/BoardConfigVendor.mk
