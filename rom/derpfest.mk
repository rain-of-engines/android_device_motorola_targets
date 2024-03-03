#
# Copyright 2014 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Common
include device/motorola/targets/include/common.mk

COMMON_LUNCH_CHOICES := \
    derp_$(DEVICE)-eng \
    derp_$(DEVICE)-user \
    derp_$(DEVICE)-userdebug

# Inherit some common stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

PRODUCT_NAME := derp_$(DEVICE)

WITH_GMS := true
TARGET_INCLUDE_PIXEL_CHARGER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
