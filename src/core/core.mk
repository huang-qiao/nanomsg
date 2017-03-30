CURRENT_ABS_FOLDER_PATH=/$(patsubst /%,%,$(subst $($(abspath $(USER_LOCAL_PATH))),,$(abspath $1)))

CORE_LOCAL_ABS_PATH := $(call CURRENT_ABS_FOLDER_PATH, $(call my-dir))
LOCAL_PATH:=$(subst ?,,$(firstword ?$(subst \, ,$(subst /, , $(abspath $(call my-dir))))))

###
# define src and headers
$(info CORE_LOCAL_ABS_PATH : $(CORE_LOCAL_ABS_PATH))
CORE_HDR := "$(CORE_LOCAL_ABS_PATH)"
CORE_SRC := \
	$(CORE_LOCAL_ABS_PATH)/ep.c \
	$(CORE_LOCAL_ABS_PATH)/global.c \
	$(CORE_LOCAL_ABS_PATH)/pipe.c \
	$(CORE_LOCAL_ABS_PATH)/poll.c \
	$(CORE_LOCAL_ABS_PATH)/sock.c \
	$(CORE_LOCAL_ABS_PATH)/sockbase.c \
	$(CORE_LOCAL_ABS_PATH)/symbol.c

LOCAL_C_INCLUDES += $(CORE_HDR)
LOCAL_SRC_FILES += $(CORE_SRC)
$(info CORE => LOCAL_C_INCLUDES : $(LOCAL_C_INCLUDES))
