#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from j7y17lte device
$(call inherit-product, device/samsung/j7y17lte/device.mk)

PRODUCT_DEVICE := j7y17lte
PRODUCT_NAME := omni_j7y17lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := Galaxy J7 2017
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lineage_j7y17lte-eng 12 SQ3A.220705.004 eng.root.20221031.142029 test-keys"

BUILD_FINGERPRINT := samsung/lineage_j7y17lte/j7y17lte:12/SQ3A.220705.004/root10311419:eng/test-keys
