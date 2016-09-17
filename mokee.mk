# Copyright (C) 2014 The CyanogenMod Project
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

# Release name
PRODUCT_RELEASE_NAME := zoom_fdd

# Inherit some common CM stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/zoom_fdd/full_zoom_fdd.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := zoom_fdd
PRODUCT_NAME := mk_zoom_fdd
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo Z90-7
PRODUCT_MANUFACTURER := LENOVO

TARGET_VENDOR_PRODUCT_NAME := zoom_fdd
TARGET_VENDOR_DEVICE_NAME := zoom_fdd
PRODUCT_GMS_CLIENTID_BASE := android-lenovo

# Build prop overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=zoom_fdd \
    PRODUCT_NAME=zoom_fdd \
    BUILD_FINGERPRINT="Lenovo/zoom_fdd/zoom_fdd:5.1.1/LMY47V/VIBEUI_V2.8_1550_5.175.1_ST_Z90-7:user/release-keys" \
    PRIVATE_BUILD_DESC="zoom_fdd-user 5.1.1 LMY47V VIBEUI_V2.8_1550_5.175.1_ST_Z90-7 release-keys"

TARGET_UNOFFICIAL_BUILD_ID := wzsx150
