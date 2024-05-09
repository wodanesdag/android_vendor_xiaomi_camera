#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# AIDL
PRODUCT_PACKAGES += \
    android.hardware.graphics.common-V4-ndk:64

# Priv-app permission
PRODUCT_COPY_FILES += \
    vendor/xiaomi/camera/configs/permissions/privapp-permissions-miuicamera.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-miuicamera.xml

# Properties
TARGET_SYSTEM_PROP += vendor/xiaomi/camera/configs/properties/system.prop

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += \
    vendor/xiaomi/camera/sepolicy/vendor

# Shims
PRODUCT_PACKAGES += \
    libgui_shim_miuicamera

# Sysconfig
PRODUCT_COPY_FILES += \
    vendor/xiaomi/camera/configs/permissions/miuicamera-hiddenapi-package-allowlist.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/miuicamera-hiddenapi-package-allowlist.xml

$(call inherit-product, vendor/xiaomi/camera/camera-vendor.mk)
