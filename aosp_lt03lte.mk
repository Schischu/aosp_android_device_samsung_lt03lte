#
# Copyright 2014 The Android Open-Source Project
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

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml
PRODUCT_COPY_FILES += device/sample/etc/old-apns-conf.xml:system/etc/old-apns-conf.xml

# Inherit from the common Open Source product configuration
##$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
##$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

#ro.product.device is used for ota check lt03ltexx
PRODUCT_NAME := lt03ltexx
PRODUCT_DEVICE := lt03lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-P605
PRODUCT_MANUFACTURER := samsung
#If true than only samsung vendor is allowed which is annoying
PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, device/samsung/lt03lte/device.mk)
$(call inherit-product-if-exists, vendor/samsung/lt03lte/device-vendor.mk)

PRODUCT_NAME := aosp_lt03lte

PRODUCT_PACKAGES += \
    Launcher3 \
    OneTimeInitializer \
    Gallery2 \
    OpenDelta

