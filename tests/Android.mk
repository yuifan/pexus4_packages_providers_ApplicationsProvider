LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

# We only want this apk build for tests.
LOCAL_MODULE_TAGS := tests

# Include all test java files.
LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_INSTRUMENTATION_FOR := ApplicationsProvider

# framework is required to access android.provider.Applications
LOCAL_JAVA_LIBRARIES := android.test.runner

LOCAL_PACKAGE_NAME := ApplicationsProviderTests
LOCAL_CERTIFICATE := shared

include $(BUILD_PACKAGE)
