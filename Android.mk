LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_STATIC_JAVA_LIBRARIES := libarity android-support-v4

LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := libarity:arity-2.1.2.jar

LOCAL_PACKAGE_NAME := Superuser
LOCAL_SRC_FILES := $(call all-java-files-under,src)
LOCAL_PROGUARD_FLAG_FILES := proguard.flags

LOCAL_AAPT_INCLUDE_ALL_RESOURCES := true

LOCAL_CERTIFICATE := superuser

LOCAL_DEX_PREOPT := false

include $(BUILD_PACKAGE)

##

include $(CLEAR_VARS)

LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := libarity:arity-2.1.2.jar

include $(BUILD_MULTI_PREBUILT)

# Use the folloing include to make our test apk.
include $(call all-makefiles-under,$(LOCAL_PATH))
