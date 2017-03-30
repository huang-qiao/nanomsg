CURRENT_ABS_FOLDER_PATH=/$(patsubst /%,%,$(subst $($(abspath $(USER_LOCAL_PATH))),,$(abspath $1)))

AIO_LOCAL_ABS_PATH := $(call CURRENT_ABS_FOLDER_PATH, $(call my-dir))
LOCAL_PATH:=$(subst ?,,$(firstword ?$(subst \, ,$(subst /, , $(abspath $(call my-dir))))))

###
# define src and headers
$(info AIO_LOCAL_ABS_PATH : $(AIO_LOCAL_ABS_PATH))
AIO_HDR := "$(AIO_LOCAL_ABS_PATH)"
AIO_SRC := \
	$(AIO_LOCAL_ABS_PATH)/ctx.c \
	$(AIO_LOCAL_ABS_PATH)/fsm.c \
	$(AIO_LOCAL_ABS_PATH)/poller.c \
	$(AIO_LOCAL_ABS_PATH)/pool.c \
	$(AIO_LOCAL_ABS_PATH)/timer.c \
	$(AIO_LOCAL_ABS_PATH)/timerset.c \
	$(AIO_LOCAL_ABS_PATH)/usock.c \
	$(AIO_LOCAL_ABS_PATH)/worker.c

LOCAL_C_INCLUDES += $(AIO_HDR)
LOCAL_SRC_FILES += $(AIO_SRC)
$(info AIO => LOCAL_C_INCLUDES : $(LOCAL_C_INCLUDES))
