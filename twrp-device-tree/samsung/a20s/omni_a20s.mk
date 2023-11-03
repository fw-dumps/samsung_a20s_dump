#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from a20s device
$(call inherit-product, device/samsung/a20s/device.mk)

PRODUCT_DEVICE := a20s
PRODUCT_NAME := omni_a20s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A207F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a20sxx-user 11 RP1A.200720.012 A207FXXU5CWH1 release-keys"

BUILD_FINGERPRINT := samsung/a20sxx/a20s:11/RP1A.200720.012/A207FXXU5CWH1:user/release-keys
