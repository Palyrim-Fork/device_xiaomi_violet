#
# Copyright (C) 2018-2020 The LineageOS Project
# Copyright (C) 2023 The OctaviOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/device.mk)

# Inherit some common Octavi stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Sony Dolby
$(call inherit-product, vendor/dolby/config.mk)

# MiuiCamera
$(call inherit-product, vendor/MiuiCamera/config.mk)

# GAPPS_BUILD_TYPE
WITH_GAPPS := 2

# Valid for core/full GAPPS
TARGET_USE_GOOGLE_TELEPHONY := false

#Alpha build tag
ALPHA_BUILD_TYPE := UNOFFICIAL
ALPHA_MAINTAINER := Dr.Opto

# Alpha internal properties
TARGET_INCLUDE_MATLOG := false
TARGET_USE_PIXEL_LAUNCHER := false
TARGET_EXCLUDES_AUDIOFX := true

# Device Flags
TARGET_ENABLE_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Charging Animation
TARGET_USE_PIXEL_CHARGER := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="violet"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
