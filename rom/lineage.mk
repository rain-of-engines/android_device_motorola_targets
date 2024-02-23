#
# Copyright 2014 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Common
include device/motorola/targets/include/common.mk

COMMON_LUNCH_CHOICES := \
    lineage_$(DEVICE)-eng \
    lineage_$(DEVICE)-user \
    lineage_$(DEVICE)-userdebug

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_$(DEVICE)
