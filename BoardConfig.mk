#
# Copyright (C) 2018 The Xiaomi-SDM660 Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

include device/xiaomi/sdm660-common/PlatformConfig.mk

# Device Path
DEVICE_PATH := device/xiaomi/jasmine_sprout

# A/B
AB_OTA_UPDATER := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_NO_RECOVERY := true

# DT2W
TARGET_TAP_TO_WAKE_NODE := "/proc/nvt_wake_gesture"

# Kernel
TARGET_KERNEL_SOURCE := kernel/xiaomi/sdm660
TARGET_KERNEL_CONFIG := jasmine-perf_defconfig

# Manifest
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml

# Platform
BOARD_VENDOR_PLATFORM := xiaomi-sdm660

# Root Folders
BOARD_ROOT_EXTRA_FOLDERS := persist

# Vendor Security patch level
VENDOR_SECURITY_PATCH := 2018-09-01

# Vendor init
TARGET_INIT_VENDOR_LIB := libinit_jasmine_sprout
TARGET_RECOVERY_DEVICE_MODULES := libinit_jasmine_sprout

# WLAN MAC
WLAN_MAC_SYMLINK := true

#TWRP
WITH_TWRP := true# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_DEVICE_DIRS += device/xiaomi/sdm660-common/twrp

# TWRP specific build flags
TW_THEME := portrait_hdpi
BOARD_HAS_NO_REAL_SDCARD := true
TW_MAX_BRIGHTNESS := 100
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_EXTRA_LANGUAGES := true
TW_NO_SCREEN_BLANK := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_INCLUDE_NTFS_3G := true
RECOVERY_SDCARD_ON_DATA := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_DEVICE_MODULES += android.hardware.boot@1.0
#TW_RECOVERY_ADDITIONAL_RELINK_FILES := ${OUT}/system/lib64/android.hardware.boot@1.0.so
TW_SCREEN_BLANK_ON_BOOT := true

# MTP will not work until we update it to support ffs
#TW_EXCLUDE_MTP := true

# Security Patch Hack to prevent Anti Rollback
BOARD_SUPPRESS_SECURE_ERASE := true
TW_IGNORE_MISC_WIPE_DATA := true
ALLOW_MISSING_DEPENDENCIES := true

# exFAT FS Support
TW_INCLUDE_FUSE_EXFAT := true

# NTFS Support
TW_INCLUDE_FUSE_NTFS := true

# Crypto
TARGET_HW_DISK_ENCRYPTION := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true
TW_INCLUDE_CRYPTO := true

# Keymaster
TARGET_PROVIDES_KEYMASTER := true

# A/B partition device flags
#TARGET_NO_KERNEL := false
#TARGET_NO_RECOVERY := true
#BOARD_USES_RECOVERY_AS_BOOT := true
AB_OTA_UPDATER := true
TW_USE_TOOLBOX := true

