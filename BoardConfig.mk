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

# Partitions
BOARD_VENDORIMAGE_PARTITION_SIZE := 620756992
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3238002688
BOARD_DTBOIMG_PARTITION_SIZE := 8388608

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/vendor/etc/fstab.qcom
BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 80
