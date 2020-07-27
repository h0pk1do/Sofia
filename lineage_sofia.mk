# Copyright (C) 2019 LineageOS
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#Inherit from sofia device
$(call inherit-product, device/motorola/sofia/device.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common Syberia stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080

TARGET_HAS_FOD := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_sofia
PRODUCT_DEVICE := sofia
PRODUCT_BRAND := Moto G Power
PRODUCT_MANUFACTURER := Motorola
PRODUCT_SHIPPING_API_LEVEL := 28

BUILD_FINGERPRINT := "motorola/sofia_retail/sofia:10/QPM30.80-13-2/0f2407:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sofia_retail-user 10 QPM30.80-13-2 0f2407 release-keys" \
    PRODUCT_NAME="sofia" \
    TARGET_DEVICE="sofia"
#TODO What is this?
PRODUCT_GMS_CLIENTID_BASE := android-motorola

ALLOW_MISSING_DEPENDENCIES := true
