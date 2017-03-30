CURRENT_ABS_FOLDER_PATH=/$(patsubst /%,%,$(subst $($(abspath $(USER_LOCAL_PATH))),,$(abspath $1)))

UTILS_LOCAL_ABS_PATH := $(call CURRENT_ABS_FOLDER_PATH, $(call my-dir))
LOCAL_PATH:=$(subst ?,,$(firstword ?$(subst \, ,$(subst /, , $(abspath $(call my-dir))))))

###
# define src and headers
$(info UTILS_LOCAL_ABS_PATH : $(UTILS_LOCAL_ABS_PATH))
UTILS_HDR := "$(UTILS_LOCAL_ABS_PATH)"
UTILS_SRC := \
	$(UTILS_LOCAL_ABS_PATH)/alloc.c \
	$(UTILS_LOCAL_ABS_PATH)/atomic.c \
	$(UTILS_LOCAL_ABS_PATH)/chunk.c \
	$(UTILS_LOCAL_ABS_PATH)/chunkref.c \
	$(UTILS_LOCAL_ABS_PATH)/clock.c \
	$(UTILS_LOCAL_ABS_PATH)/closefd.c \
	$(UTILS_LOCAL_ABS_PATH)/condvar.c \
	$(UTILS_LOCAL_ABS_PATH)/efd.c \
	$(UTILS_LOCAL_ABS_PATH)/err.c \
	$(UTILS_LOCAL_ABS_PATH)/hash.c \
	$(UTILS_LOCAL_ABS_PATH)/list.c \
	$(UTILS_LOCAL_ABS_PATH)/msg.c \
	$(UTILS_LOCAL_ABS_PATH)/mutex.c \
	$(UTILS_LOCAL_ABS_PATH)/once.c \
	$(UTILS_LOCAL_ABS_PATH)/queue.c \
	$(UTILS_LOCAL_ABS_PATH)/random.c \
	$(UTILS_LOCAL_ABS_PATH)/sem.c \
	$(UTILS_LOCAL_ABS_PATH)/sleep.c \
	$(UTILS_LOCAL_ABS_PATH)/stopwatch.c \
	$(UTILS_LOCAL_ABS_PATH)/strcasecmp.c \
	$(UTILS_LOCAL_ABS_PATH)/strcasestr.c \
	$(UTILS_LOCAL_ABS_PATH)/strncasecmp.c \
	$(UTILS_LOCAL_ABS_PATH)/thread.c \
	$(UTILS_LOCAL_ABS_PATH)/wire.c

LOCAL_C_INCLUDES += $(UTILS_HDR)
LOCAL_SRC_FILES += $(UTILS_SRC)
$(info UTILS => LOCAL_C_INCLUDES : $(LOCAL_C_INCLUDES))
