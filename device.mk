# Copyright 2014 The Android Open Source Project
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

TARGET_IS_AMOGUS_DOHA := true
TARGET_IS_AMOGUS := true

$(call inherit-product, device/motorola/amogus/device.mk)

# Device path
DEVICE_PATH := device/motorola/amogus_doha

# Audio - Cirrus (DOHA)
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/vendor/etc/audio/sku_doha/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_doha/audio_platform_info_moto_doha.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/audio/sku_doha/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_doha/audio_policy_configuration.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/audio/sku_doha/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_doha/audio_policy_volumes.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/audio/sku_doha/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_doha/default_volume_tables.xml \
    $(DEVICE_PATH)/rootdir/vendor/etc/audio/sku_doha/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_doha/mixer_paths_moto_doha.xml

# Camera
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/vendor/etc/camera/camera_config_doha.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/camera_config_doha.xml

# FSTab
PRODUCT_PACKAGES += \
    fstab.amogus_doha

# Overlays
PRODUCT_PACKAGES += \
    dohaFrameworkOverlay \
    dohaSystemUIOverlay

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := false

# Props
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/props/build_doha.prop:$(TARGET_COPY_OUT_VENDOR)/build_doha.prop

$(call inherit-product-if-exists, vendor/motorola/amogus_doha/amogus_doha-vendor.mk)
