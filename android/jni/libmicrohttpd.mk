#libmicrohttpd

LIB_VERSION:=libmicrohttpd

LOCAL_PATH:= $(call my-dir)
LIB_ROOT_REL:= ../../$(LIB_VERSION)
LIB_ROOT_ABS:= $(LOCAL_PATH)/../../$(LIB_VERSION)


include $(CLEAR_VARS)

LOCAL_CFLAGS := -DHAVE_CONFIG_H 

LOCAL_SRC_FILES := \
 $(LIB_ROOT_REL)/src/microhttpd/base64.c \
 $(LIB_ROOT_REL)/src/microhttpd/basicauth.c \
 $(LIB_ROOT_REL)/src/microhttpd/connection.c \
 $(LIB_ROOT_REL)/src/microhttpd/daemon.c \
 $(LIB_ROOT_REL)/src/microhttpd/digestauth.c \
 $(LIB_ROOT_REL)/src/microhttpd/internal.c \
 $(LIB_ROOT_REL)/src/microhttpd/md5.c \
 $(LIB_ROOT_REL)/src/microhttpd/memorypool.c \
 $(LIB_ROOT_REL)/src/microhttpd/postprocessor.c \
 $(LIB_ROOT_REL)/src/microhttpd/reason_phrase.c \
 $(LIB_ROOT_REL)/src/microhttpd/tsearch.c

LOCAL_C_INCLUDES += \
 $(LIB_ROOT_ABS) \
 $(LIB_ROOT_ABS)/src/include \
 $(LIB_ROOT_ABS)/src/microhttpd

LOCAL_LDLIBS := 

LOCAL_MODULE := libmicrohttpd

include $(BUILD_SHARED_LIBRARY)
