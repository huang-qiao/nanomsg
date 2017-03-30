CURRENT_ABS_FOLDER_PATH=/$(patsubst /%,%,$(subst $($(abspath $(USER_LOCAL_PATH))),,$(abspath $1)))

DEVICES_LOCAL_ABS_PATH := $(call CURRENT_ABS_FOLDER_PATH, $(call my-dir))
LOCAL_PATH:=$(subst ?,,$(firstword ?$(subst \, ,$(subst /, , $(abspath $(call my-dir))))))

###
# define src and headers
$(info DEVICES_LOCAL_ABS_PATH : $(DEVICES_LOCAL_ABS_PATH))
DEVICES_HDR := "$(DEVICES_LOCAL_ABS_PATH)"
DEVICES_SRC := $(DEVICES_LOCAL_ABS_PATH)/device.c

LOCAL_C_INCLUDES += $(DEVICES_HDR)
LOCAL_SRC_FILES += $(DEVICES_SRC)
$(info DEVICES => LOCAL_C_INCLUDES : $(LOCAL_C_INCLUDES))
