OCAL_PATH := $(call my-dir)

ifneq ($(filter S4,$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif