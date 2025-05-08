#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from NX769J device
$(call inherit-product, device/nubia/NX769J/device.mk)

PRODUCT_DEVICE := NX769J
PRODUCT_NAME := twrp_NX769J
PRODUCT_BRAND := nubia
PRODUCT_MODEL := NX769J
PRODUCT_MANUFACTURER := nubia

PRODUCT_GMS_CLIENTID_BASE := android-nubia

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="NX769J-user 14 UKQ1.230917.001 20250423.013901 release-keys"

BUILD_FINGERPRINT := nubia/NX769J/NX769J:14/UKQ1.230917.001/20250423.013901:user/release-keys
