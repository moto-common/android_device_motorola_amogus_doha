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

include device/motorola/amogus/BoardConfig.mk

LOCAL_PATH := device/motorola/amogus_doha

# Dtb/o
ifneq ($(BOARD_PREBUILT_DTBOIMAGE),)
  BOARD_PREBUILT_DTBIMAGE_DIR := device/motorola/amogus-kernel/dtbs
  BOARD_PREBUILT_DTBOIMAGE := device/motorola/amogus-kernel/dtbo.img
endif

# Kernel
ifneq ($(TARGET_PREBUILT_KERNEL),)
  TARGET_PREBUILT_KERNEL := device/motorola/amogus-kernel/Image.gz

## Modules
  BOARD_VENDOR_KERNEL_MODULES := \
      $(wildcard device/motorola/amogus-kernel/modules/*.ko)
endif

# Partitions
BOARD_VENDORIMAGE_PARTITION_SIZE := 620756992
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3238002688
BOARD_DTBOIMG_PARTITION_SIZE := 8388608

# Recovery
BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 80

# VBMeta
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 2
