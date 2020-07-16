#
# Copyright 2017 The Android Open Source Project
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
#

# Inherit from our custom product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit language packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

PRODUCT_DEVICE := S4
PRODUCT_NAME := omni_S4
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := S4
PRODUCT_MANUFACTURER := INFINIX MOBILITY LIMITED

# enable stock zip packages flash
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.treble.enabled=true \
    persist.sys.usb.config=mtp \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
	ro.secure=1 \
    ro.adb.secure=0 \
	ro.vendor.build.security_patch=2029-10-31 \
    ro.allow.mock.location=0
	
PRODUCT_BUILD_PROP_OVERRIDES += \
	TARGET_DEVICE=S4 \
	PRODUCT_NAME=S4
	
PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
	ro.bootimage.build.date.utc \
	ro.build.date.utc

PRODUCT_GMS_CLIENTID_BASE := android-transsion-infinix-rev1
