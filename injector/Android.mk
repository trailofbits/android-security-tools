LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := injector
LOCAL_SRC_FILES := $(subst $(LOCAL_PATH)/,,$(wildcard $(LOCAL_PATH)/*.c))
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include
LOCAL_LDFLAGS += -pie

include $(BUILD_EXECUTABLE)
