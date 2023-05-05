#
# Copyright (C) 2020-2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hero2qlte device
$(call inherit-product, device/samsung/hero2qlte/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hero2qlte
PRODUCT_NAME := lineage_hero2qlte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G9350
PRODUCT_MANUFACTURER := samsung

PRODUCT_SYSTEM_NAME := hero2qlte

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Use the latest approved GMS identifiers
# do note actial value is hero2qltechn for device and hero2qltezc for name
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=hero2qlte \
    PRIVATE_BUILD_DESC="hero2qltezc-user 8.0.0 R16NW G9350ZCS5CTA1 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "samsung/hero2qltezc/hero2qltechn:8.0.0/R16NW/G9350ZCS5CTA1:user/release-keys"
