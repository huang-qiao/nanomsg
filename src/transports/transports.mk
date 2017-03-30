CURRENT_ABS_FOLDER_PATH=/$(patsubst /%,%,$(subst $($(abspath $(USER_LOCAL_PATH))),,$(abspath $1)))

TRANSPORTS_LOCAL_ABS_PATH := $(call CURRENT_ABS_FOLDER_PATH, $(call my-dir))
LOCAL_PATH:=$(subst ?,,$(firstword ?$(subst \, ,$(subst /, , $(abspath $(call my-dir))))))

###
# define src and headers
$(info TRANSPORTS_LOCAL_ABS_PATH : $(TRANSPORTS_LOCAL_ABS_PATH))
TRANSPORTS_HDR := \
	$(TRANSPORTS_LOCAL_ABS_PATH)/inproc \
	$(TRANSPORTS_LOCAL_ABS_PATH)/ipc \
	$(TRANSPORTS_LOCAL_ABS_PATH)/tcp \
	$(TRANSPORTS_LOCAL_ABS_PATH)/utils \
	$(TRANSPORTS_LOCAL_ABS_PATH)/ws

TRANSPORTS_SRC := \
	$(TRANSPORTS_LOCAL_ABS_PATH)/inproc/binproc.c \
	$(TRANSPORTS_LOCAL_ABS_PATH)/inproc/cinproc.c \
	$(TRANSPORTS_LOCAL_ABS_PATH)/inproc/inproc.c \
	$(TRANSPORTS_LOCAL_ABS_PATH)/inproc/ins.c \
	$(TRANSPORTS_LOCAL_ABS_PATH)/inproc/msgqueue.c \
	$(TRANSPORTS_LOCAL_ABS_PATH)/inproc/sinproc.c \
	$(TRANSPORTS_LOCAL_ABS_PATH)/ipc/aipc.c \
	$(TRANSPORTS_LOCAL_ABS_PATH)/ipc/bipc.c \
	$(TRANSPORTS_LOCAL_ABS_PATH)/ipc/cipc.c \
	$(TRANSPORTS_LOCAL_ABS_PATH)/ipc/ipc.c \
	$(TRANSPORTS_LOCAL_ABS_PATH)/ipc/sipc.c \
	$(TRANSPORTS_LOCAL_ABS_PATH)/tcp/atcp.c \
	$(TRANSPORTS_LOCAL_ABS_PATH)/tcp/btcp.c \
	$(TRANSPORTS_LOCAL_ABS_PATH)/tcp/ctcp.c \
	$(TRANSPORTS_LOCAL_ABS_PATH)/tcp/stcp.c \
	$(TRANSPORTS_LOCAL_ABS_PATH)/tcp/tcp.c \
	$(TRANSPORTS_LOCAL_ABS_PATH)/utils/backoff.c \
	$(TRANSPORTS_LOCAL_ABS_PATH)/utils/base64.c \
	$(TRANSPORTS_LOCAL_ABS_PATH)/utils/dns.c \
	$(TRANSPORTS_LOCAL_ABS_PATH)/utils/iface.c \
	$(TRANSPORTS_LOCAL_ABS_PATH)/utils/literal.c \
	$(TRANSPORTS_LOCAL_ABS_PATH)/utils/port.c \
	$(TRANSPORTS_LOCAL_ABS_PATH)/utils/streamhdr.c \
	$(TRANSPORTS_LOCAL_ABS_PATH)/ws/aws.c \
	$(TRANSPORTS_LOCAL_ABS_PATH)/ws/bws.c \
	$(TRANSPORTS_LOCAL_ABS_PATH)/ws/cws.c \
	$(TRANSPORTS_LOCAL_ABS_PATH)/ws/sha1.c \
	$(TRANSPORTS_LOCAL_ABS_PATH)/ws/sws.c \
	$(TRANSPORTS_LOCAL_ABS_PATH)/ws/ws.c \
	$(TRANSPORTS_LOCAL_ABS_PATH)/ws/ws_handshake.c

LOCAL_C_INCLUDES += $(TRANSPORTS_HDR)
LOCAL_SRC_FILES += $(TRANSPORTS_SRC)
$(info TRANSPORTS => LOCAL_C_INCLUDES : $(LOCAL_C_INCLUDES))
