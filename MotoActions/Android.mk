LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_PACKAGE_NAME := MotoActions
LOCAL_CERTIFICATE := platform
LOCAL_PROPRIETARY_MODULE := true

LOCAL_STATIC_JAVA_LIBRARIES := \
    android-support-v14-preference \
    android-support-v7-appcompat \
    android-support-v7-preference \
    android-support-v7-recyclerview

LOCAL_PROGUARD_FLAG_FILES := proguard.flags

LOCAL_RESOURCE_DIR := \
    $(LOCAL_PATH)/res \
    $(LOCAL_PATH)/../../../../packages/resources/devicesettings/res \
    frameworks/support/v14/preference/res \
    frameworks/support/v7/appcompat/res \
    frameworks/support/v7/preference/res \
    frameworks/support/v7/recyclerview/res

LOCAL_AAPT_FLAGS := --auto-add-overlay \
    --extra-packages android.support.v14.preference:android.support.v7.appcompat:android.support.v7.preference:android.support.v7.recyclerview

LOCAL_PROGUARD_ENABLED := disabled

include frameworks/base/packages/SettingsLib/common.mk

include $(BUILD_PACKAGE)

include $(call all-makefiles-under,$(LOCAL_PATH))
