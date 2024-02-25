#
# Copyright 2014 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Device
## Extract device name from TARGET_PRODUCT
## Account for target product value containing
## no prefix
DEVICE := $(subst _, ,$(TARGET_PRODUCT))
ifneq ($(words $(DEVICE)), 1)
  DEVICE := $(subst $() ,_,$(filter-out $(firstword $(DEVICE)),$(DEVICE)))
endif

# Brand
PRODUCT_BRAND := Motorola

# Device
PRODUCT_DEVICE := $(DEVICE)

# Manufacturer
PRODUCT_MANUFACTURER := Motorola

# Overlays
PRODUCT_PACKAGES += \
    CertificationOverlay

ifneq (,$(filter %derp, $(PRODUCT_NAME)))
PRODUCT_PACKAGES += \
    DerpMaintainer
endif

# Required Inheritance
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# ROM Name
ROM_NAME := $(firstword $(subst _, ,$(TARGET_PRODUCT)))

# Inherit device makefile
include device/motorola/$(DEVICE)/device.mk
