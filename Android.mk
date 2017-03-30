LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libnanomsg

include src/src.mk

LOCAL_CFLAGS += -DNN_USE_EPOLL -DNN_USE_EVENTFD -DNN_HAVE_LINUX
LOCAL_CFLAGS +=  \
	-DNN_HAVE_STDINT \
	-DNN_HAVE_CLOCK_MONOTONIC \
	-DNN_HAVE_PIPE \
	-DNN_HAVE_SOCKETPAIR \
	-DNN_HAVE_SEMAPHORE \
	-DNN_HAVE_POLL \
	-DNN_HAVE_MSG_CONTROL

LOCAL_MODULE_TAGS := optional

LOCAL_COPY_HEADERS_TO := nanomsg
LOCAL_COPY_HEADERS := nn.h bus.h reqrep.h pipeline.h pair.h survey.h pubsub.h
# Flags
LOCAL_LDLIBS   += -lm -llog -ldl -lz -ljnigraphics
LOCAL_CPPFLAGS += -fexceptions -frtti -std=c++11

include $(BUILD_SHARED_LIBRARY)
