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
# Inherit from our custom product configuration
$(call inherit-product, vendor/rr/config/common.mk)

$(call inherit-product, vendor/motorola/sofia/sofia-vendor.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common Syberia stuff
$(call inherit-product, vendor/rr/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080
AB_OTA_UPDATER := true
TARGET_HAS_FOD := true

TARGET_ENFORCE_AB_OTA_PARTITION_LIST := true

# enable to generate super_empy.img if needed to wipe super partition table
#BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST += \
    vendor

PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_BUILD_PRODUCT_IMAGE  := true
PRODUCT_BUILD_ODM_IMAGE := false
PRODUCT_BUILD_RAMDISK_IMAGE := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := false
TARGET_NO_RECOVERY := false
#BOARD_INCLUDE_RECOVERY_DTBO = true
BOARD_BUILD_RETROFIT_DYNAMIC_PARTITIONS_OTA_PACKAGE := false
BOARD_USES_RECOVERY_AS_BOOT := false

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := rr_sofia
PRODUCT_DEVICE := sofia
PRODUCT_BRAND := motorola
PRODUCT_MANUFACTURER := Motorola
PRODUCT_SHIPPING_API_LEVEL := 29
PRODUCT_MODEL := moto g power

BUILD_FINGERPRINT := "motorola/sofia_retail/sofia:10/QPM30.80-13-2/0f2407:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sofia_retail-user 10 QPM30.80-51-5" \
    PRODUCT_NAME="sofia" \
    TARGET_DEVICE="sofia"
#TODO What is this?
PRODUCT_GMS_CLIENTID_BASE := android-motorola

ALLOW_MISSING_DEPENDENCIES := true

