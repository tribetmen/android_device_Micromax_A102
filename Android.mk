LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),A102)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
