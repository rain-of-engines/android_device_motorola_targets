#
# Copyright 2014 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Common
include device/motorola/targets/include/common.mk

# Inherit from the AOSPA configuration.
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

# Bluetooth
PRODUCT_NAME := aospa_$(DEVICE)
