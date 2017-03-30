CURRENT_ABS_FOLDER_PATH=/$(patsubst /%,%,$(subst $($(abspath $(USER_LOCAL_PATH))),,$(abspath $1)))

PROTOCOLS_LOCAL_ABS_PATH := $(call CURRENT_ABS_FOLDER_PATH, $(call my-dir))
LOCAL_PATH:=$(subst ?,,$(firstword ?$(subst \, ,$(subst /, , $(abspath $(call my-dir))))))

###
# define src and headers
$(info PROTOCOLS_LOCAL_ABS_PATH : $(PROTOCOLS_LOCAL_ABS_PATH))
PROTOCOLS_HDR := \
	$(PROTOCOLS_LOCAL_ABS_PATH)/bus \
	$(PROTOCOLS_LOCAL_ABS_PATH)/pair \
	$(PROTOCOLS_LOCAL_ABS_PATH)/pipeline \
	$(PROTOCOLS_LOCAL_ABS_PATH)/pubsub \
	$(PROTOCOLS_LOCAL_ABS_PATH)/reqrep \
	$(PROTOCOLS_LOCAL_ABS_PATH)/survey \
	$(PROTOCOLS_LOCAL_ABS_PATH)/utils

PROTOCOLS_SRC := \
	$(PROTOCOLS_LOCAL_ABS_PATH)/bus/bus.c \
	$(PROTOCOLS_LOCAL_ABS_PATH)/bus/xbus.c \
	$(PROTOCOLS_LOCAL_ABS_PATH)/pair/pair.c \
	$(PROTOCOLS_LOCAL_ABS_PATH)/pair/xpair.c \
	$(PROTOCOLS_LOCAL_ABS_PATH)/pipeline/pull.c \
	$(PROTOCOLS_LOCAL_ABS_PATH)/pipeline/push.c \
	$(PROTOCOLS_LOCAL_ABS_PATH)/pipeline/xpull.c \
	$(PROTOCOLS_LOCAL_ABS_PATH)/pipeline/xpush.c \
	$(PROTOCOLS_LOCAL_ABS_PATH)/pubsub/pub.c \
	$(PROTOCOLS_LOCAL_ABS_PATH)/pubsub/sub.c \
	$(PROTOCOLS_LOCAL_ABS_PATH)/pubsub/trie.c \
	$(PROTOCOLS_LOCAL_ABS_PATH)/pubsub/xpub.c \
	$(PROTOCOLS_LOCAL_ABS_PATH)/pubsub/xsub.c \
	$(PROTOCOLS_LOCAL_ABS_PATH)/reqrep/rep.c \
	$(PROTOCOLS_LOCAL_ABS_PATH)/reqrep/req.c \
	$(PROTOCOLS_LOCAL_ABS_PATH)/reqrep/task.c \
	$(PROTOCOLS_LOCAL_ABS_PATH)/reqrep/xrep.c \
	$(PROTOCOLS_LOCAL_ABS_PATH)/reqrep/xreq.c \
	$(PROTOCOLS_LOCAL_ABS_PATH)/survey/respondent.c \
	$(PROTOCOLS_LOCAL_ABS_PATH)/survey/surveyor.c \
	$(PROTOCOLS_LOCAL_ABS_PATH)/survey/xrespondent.c \
	$(PROTOCOLS_LOCAL_ABS_PATH)/survey/xsurveyor.c \
	$(PROTOCOLS_LOCAL_ABS_PATH)/utils/dist.c \
	$(PROTOCOLS_LOCAL_ABS_PATH)/utils/excl.c \
	$(PROTOCOLS_LOCAL_ABS_PATH)/utils/fq.c \
	$(PROTOCOLS_LOCAL_ABS_PATH)/utils/lb.c \
	$(PROTOCOLS_LOCAL_ABS_PATH)/utils/priolist.c

LOCAL_C_INCLUDES += $(PROTOCOLS_HDR)
LOCAL_SRC_FILES += $(PROTOCOLS_SRC)
$(info CORE => LOCAL_C_INCLUDES : $(LOCAL_C_INCLUDES))
