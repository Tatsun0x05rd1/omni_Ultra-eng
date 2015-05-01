# Copyright (C) 2013 OmniROM Project
# Copyright (C) 2012 The CyanogenMod Project
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

# Inherit Omni GSM telephony parts
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our omni product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)
$(call inherit-product, device/CherryMobile/Ultra/device.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := omni_Ultra
PRODUCT_DEVICE := Ultra
PRODUCT_BRAND := CherryMobile
PRODUCT_MANUFACTURER := CherryMobile
PRODUCT_MODEL := H340
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=Ultra TARGET_DEVICE=Ultra BUILD_FINGERPRINT="CherryMobile/Ultra/msm8226:4.3/JLS36C/TBW596625_9397_V111050:user/release-keys" PRIVATE_BUILD_DESC="msm8226-user 4.3 JLS36C TBW596625_9397_V111050 release-keys"

