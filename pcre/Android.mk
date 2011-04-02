#
#  Android makefile for libpcre
#
#  This makefile generates libpcre.so, pcregrep and pcre.h ONLY.
#  It should be amended to build libpcreposix.so, libpcrecpp.so
#  and tests.


LOCAL_PATH := $(call my-dir)

###
### Build libpcre.so and pcre.h
###

include $(CLEAR_VARS)

LOCAL_MODULE := libpcre
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_TAGS := samples

intermediates := $(call local-intermediates-dir)

LOCAL_SRC_FILES :=  \
  pcre_compile.c \
  pcre_config.c \
  pcre_dfa_exec.c \
  pcre_exec.c \
  pcre_fullinfo.c \
  pcre_get.c \
  pcre_globals.c \
  pcre_info.c \
  pcre_internal.h \
  pcre_maketables.c \
  pcre_newline.c \
  pcre_ord2utf8.c \
  pcre_refcount.c \
  pcre_study.c \
  pcre_tables.c \
  pcre_try_flipped.c \
  pcre_ucd.c \
  pcre_valid_utf8.c \
  pcre_version.c \
  pcre_xclass.c \
  ucp.h

LOCAL_COPY_HEADERS := pcre.h

LOCAL_CFLAGS += -O3 -I. -DHAVE_CONFIG_H

GEN := $(LOCAL_PATH)/pcre_chartables.c
$(GEN): $(LOCAL_PATH)/pcre_chartables.c.dist
	$(hide) cp $(LOCAL_PATH)/pcre_chartables.c.dist $@
#LOCAL_GENERATED_SOURCES += $(GEN)
LOCAL_SRC_FILES += pcre_chartables.c

GEN := $(LOCAL_PATH)/pcre.h
$(GEN): $(LOCAL_PATH)/pcre.h.generic
	$(hide) cp $(LOCAL_PATH)/pcre.h.generic $@
LOCAL_GENERATED_SOURCES += $(GEN)

GEN := $(LOCAL_PATH)/config.h
$(GEN): $(LOCAL_PATH)/config.h.generic
	$(hide) cp $(LOCAL_PATH)/config.h.generic $@
LOCAL_GENERATED_SOURCES += $(GEN)

include $(BUILD_SHARED_LIBRARY)

###
### Build pcregrep
###

include $(CLEAR_VARS)

LOCAL_MODULE := pcregrep
LOCAL_SRC_FILES := pcregrep.c
LOCAL_CFLAGS += -O3 -I. -DHAVE_CONFIG_H
LOCAL_SHARED_LIBRARIES := libpcre
LOCAL_MODULE_TAGS := samples

include $(BUILD_EXECUTABLE)
