#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from mars device
$(call inherit-product, device/xiaomi/mars/device.mk)

# Inherit some common SuperiorOS stuff.
$(call inherit-product, vendor/superior/config/common.mk)
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_AOSP_RECOVERY := true

#Gapps
TARGET_GAPPS_ARCH := arm64

# UDFPS Animations
SUPERIOR_UDFPS_ANIMATIONS := true

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := mars
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := M2102K1G
PRODUCT_NAME := superior_mars

TARGET_BOOT_ANIMATION_RES := 1440

PRODUCT_SYSTEM_NAME := mars_global
PRODUCT_SYSTEM_DEVICE := mars

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="mars-user 13 RKQ1.211001.001 V14.0.6.0.TKACNXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Xiaomi/mars/mars:13/RKQ1.211001.001/V14.0.6.0.TKACNXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
