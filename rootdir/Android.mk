LOCAL_PATH := $(call my-dir)

# Use our own fstab since doha isn't dynamic
include $(CLEAR_VARS)
LOCAL_MODULE := fstab.amogus_doha
LOCAL_SRC_FILES := vendor/etc/fstab.qcom
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := fstab.qcom
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/etc
include $(BUILD_PREBUILT)
