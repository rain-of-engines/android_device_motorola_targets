#
# Copyright 2014 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Common
include device/motorola/targets/include/common.mk

COMMON_LUNCH_CHOICES := \
    superior_$(DEVICE)-eng \
    superior_$(DEVICE)-user \
    superior_$(DEVICE)-userdebug

# Inherit some common stuff.
$(call inherit-product, vendor/superior/config/common.mk)

PRODUCT_NAME := superior_$(DEVICE)

TARGET_BOOTANIMATION_RES := 1080
TARGET_INCLUDE_PIXEL_CHARGER := true
USE_MOTO_CALCULATOR := true
BUILD_WITH_GAPPS := true
TARGET_CORE_GMS := true
USE_QUICKPIC := true

# Maintainer
PRODUCT_SYSTEM_PROPERTIES += \
     ro.spos.maintainer=skullknight963
