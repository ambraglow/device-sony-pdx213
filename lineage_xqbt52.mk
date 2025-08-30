#
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, device/sony/pdx213/device.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device.mk
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# DualSim
PRODUCT_DEVICE_DS := true

IS_PHONE := true

PRODUCT_NAME := lineage_pdx213
PRODUCT_DEVICE := pdx213
PRODUCT_MANUFACTURER := Sony
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia 10 III

#PRODUCT_GMS_CLIENTID_BASE := android-sonymobile

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="XQ-BT52-user 13 62.2.B.0.0A 0000000000000000000000000 release-keys" \
    BuildFingerprint=Sony/XQ-BT52/XQ-BT52:13/62.2.B.0.0A/0000000000000000000000000:user/release-keys \
    DeviceName=XQ-BT52 \
    DeviceProduct=XQ-BT52 \
    SystemDevice=XQ-BT52 \
    SystemName=XQ-BT52
