#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2018 The LineageOS Project
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

DEVICE_PATH := device/lge/h830

# inherit from common g5
-include device/lge/g5-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := g5,h1,h830

# Kernel
TARGET_KERNEL_CONFIG := lineageos_h830_defconfig
BOARD_KERNEL_IMAGE_NAME := Image.lz4-dtb
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel/$(BOARD_KERNEL_IMAGE_NAME)
TARGET_FORCE_PREBUILT_KERNEL := true

# inherit from the proprietary version
include vendor/lge/h830/BoardConfigVendor.mk
