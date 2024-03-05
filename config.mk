#
#  Copyright (C) 2024 The 2by2 Project
#  SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

TARGET_SUPPORTS_FELICA := true

# Soong
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    vendor/nxp/opensource/commonsys/packages/apps/Nfc \
    vendor/nxp/opensource/commonsys/external/libnfc-nci \
    vendor/nxp/opensource/interfaces \
    vendor/nxp/opensource/halimpl \
    vendor/nxp/opensource/hidlimpl

# NFC - NXP
PRODUCT_PACKAGES += \
    NQNfcNci \
    com.nxp.nfc.nq \
    nfc_nci.nqx.default.hw \
    vendor.nxp.hardware.nfc@2.0.vendor \
    vendor.nxp.hardware.nfc@2.0-service

PRODUCT_PACKAGES += \
    jcos_nq_client \
    ls_nq_client \
    se_nq_extn_client

# Secure Element
PRODUCT_PACKAGES += \
    android.hardware.secure_element@1.0.vendor \
    android.hardware.secure_element@1.1.vendor \
    android.hardware.secure_element@1.2.vendor

# HIDL
DEVICE_MANIFEST_FILE += $(LOCAL_PATH)/vintf/manifest.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += $(LOCAL_PATH)/vintf/device_framework_matrix.xml

# Get non-open-source specific aspects.
$(call inherit-product, vendor/felica/prebuilts/prebuilts-vendor.mk)
