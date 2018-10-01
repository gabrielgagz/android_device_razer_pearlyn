LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SDK_VERSION := current

LOCAL_PACKAGE_NAME := PearlynLed

LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_MODULE_TAGS := optional   

LOCAL_PROGUARD_FLAG_FILES := proguard.flags

LOCAL_PRIVILEGED_MODULE := true

LOCAL_CERTIFICATE := platform

include $(BUILD_PACKAGE)

