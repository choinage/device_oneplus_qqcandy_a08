#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from ossi device
$(call inherit-product, device/oplus/qqcandy/device.mk)

PRODUCT_DEVICE := qqcandy
PRODUCT_NAME := twrp_qqcandy
PRODUCT_BRAND := oplus
PRODUCT_MODEL := qqcandy
PRODUCT_MANUFACTURER := oplus

PRODUCT_GMS_CLIENTID_BASE := android-oplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vext_k6895v1_64-user 12 SP1A.210812.016 1662197269539 release-keys"

BUILD_FINGERPRINT := oplus/qqcandy/qqcandy:12/SP1A.210812.016/1662197269539:user/release-keys
