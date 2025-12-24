
LOCAL_PATH := $(call my-dir)

################################################################################
# ignition-transport
################################################################################

include $(CLEAR_VARS)

LOCAL_MODULE := ign-transport
LOCAL_DESCRIPTION := Transport library for component communication based on publication/subscription and service calls.

# ignore some warnings
LOCAL_CXXFLAGS := \
	-Wno-deprecated-declarations \
	-Wno-deprecated-copy

LOCAL_ARCHIVE_PATCHES = homebrew.patch warnings.patch

LOCAL_LIBRARIES := \
	ign-msgs

LOCAL_CMAKE_CONFIGURE_ARGS := \
	-DBUILD_TESTING:BOOL=False

LOCAL_EXPORT_C_INCLUDES := $(TARGET_OUT_STAGING)/usr/include/ignition/transport8

LOCAL_EXPORT_LDLIBS := \
	-lignition-transport8

include $(BUILD_CMAKE)

