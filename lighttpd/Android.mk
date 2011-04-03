LOCAL_PATH:= $(call my-dir)

PDK_ROOT := /Volumes/Data/develop/Android/PDK

BUILD_OPTION_COMMON_SRC_STATIC := true
BUILD_OPTION_COMMON_CFLAGS += -DHAVE_CONFIG_H -DHAVE_VERSION_H -I$(LOCAL_PATH) -I$(LOCAL_PATH)/src -D_REENTRANT -D__EXTENSIONS__ -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_LARGE_FILES -g -Wall
BUILD_OPTION_COMMON_LDFLAGS +=  -lpcre

COMMON_LIBNAME := lighttpd_common

####################################################################################
##common sources
include $(CLEAR_VARS)
LOCAL_MODULE := lib$(COMMON_LIBNAME)
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_TAGS := samples

LOCAL_CFLAGS += $(BUILD_OPTION_COMMON_CFLAGS) -W -Wshadow -pedantic -std=gnu99
LOCAL_LDFLAGS += $(BUILD_OPTION_COMMON_LDFLAGS) -ldl
LOCAL_SRC_FILES := \
	src/buffer.c src/log.c src/keyvalue.c src/chunk.c \
	src/http_chunk.c src/stream.c src/fdevent.c src/stat_cache.c \
	src/joblist.c src/etag.c src/array.c src/data_string.c src/data_count.c \
	src/data_array.c src/data_integer.c src/md5.c src/data_fastcgi.c \
	src/fdevent_select.c src/fdevent_poll.c src/fdevent_libev.c\
	src/fdevent_linux_sysepoll.c src/fdevent_solaris_devpoll.c \
	src/fdevent_freebsd_kqueue.c src/data_config.c src/bitset.c \
	src/inet_ntop_cache.c src/crc32.c src/connections-glue.c src/configfile-glue.c \
	src/http-header-glue.c src/network_write.c src/network_linux_sendfile.c \
	src/network_freebsd_sendfile.c src/network_writev.c \
	src/network_solaris_sendfilev.c src/network_openssl.c src/splaytree.c \
	src/status_counter.c

ifeq ($(BUILD_OPTION_COMMON_SRC_STATIC),false)
include $(BUILD_SHARED_LIBRARY)
else
include $(BUILD_STATIC_LIBRARY)
endif

####################################################################################
##mod_flv_streaming 
include $(CLEAR_VARS)
LOCAL_CFLAGS += $(BUILD_OPTION_COMMON_CFLAGS) -W -Wshadow -pedantic -std=gnu99
LOCAL_LDFLAGS += $(BUILD_OPTION_COMMON_LDFLAGS)
ifeq ($(BUILD_OPTION_COMMON_SRC_STATIC),false)
LOCAL_SHARED_LIBRARIES += lib$(COMMON_LIBNAME)
else
LOCAL_WHOLE_STATIC_LIBRARIES += lib$(COMMON_LIBNAME)
endif

LOCAL_SRC_FILES := \
    src/mod_flv_streaming.c

LOCAL_MODULE := mod_flv_streaming
LOCAL_PRELINK_MODULE := false 
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)

#####################################################################################
##mod_evasive
include $(CLEAR_VARS)
LOCAL_CFLAGS += $(BUILD_OPTION_COMMON_CFLAGS) -W -Wshadow -pedantic -std=gnu99
LOCAL_LDFLAGS += $(BUILD_OPTION_COMMON_LDFLAGS)
ifeq ($(BUILD_OPTION_COMMON_SRC_STATIC),false)
LOCAL_SHARED_LIBRARIES += lib$(COMMON_LIBNAME)
else
LOCAL_WHOLE_STATIC_LIBRARIES += lib$(COMMON_LIBNAME)
endif

LOCAL_SRC_FILES := \
	src/mod_evasive.c

LOCAL_MODULE := mod_evasive
LOCAL_PRELINK_MODULE := false 
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)

#####################################################################################
##mod_webdav
include $(CLEAR_VARS)
LOCAL_CFLAGS += $(BUILD_OPTION_COMMON_CFLAGS) -W -Wshadow -pedantic -std=gnu99
LOCAL_LDFLAGS += $(BUILD_OPTION_COMMON_LDFLAGS)
ifeq ($(BUILD_OPTION_COMMON_SRC_STATIC),false)
LOCAL_SHARED_LIBRARIES += lib$(COMMON_LIBNAME)
else
LOCAL_WHOLE_STATIC_LIBRARIES += lib$(COMMON_LIBNAME)
endif

LOCAL_SRC_FILES := \
	src/mod_webdav.c


LOCAL_MODULE := mod_webdav
LOCAL_PRELINK_MODULE := false 
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)

#####################################################################################
##mod_magnet
include $(CLEAR_VARS)
LOCAL_CFLAGS += $(BUILD_OPTION_COMMON_CFLAGS) -W -Wshadow -pedantic -std=gnu99
LOCAL_LDFLAGS += $(BUILD_OPTION_COMMON_LDFLAGS)
ifeq ($(BUILD_OPTION_COMMON_SRC_STATIC),false)
LOCAL_SHARED_LIBRARIES += lib$(COMMON_LIBNAME)
else
LOCAL_WHOLE_STATIC_LIBRARIES += lib$(COMMON_LIBNAME)
endif

LOCAL_SRC_FILES := \
    src/mod_magnet.c \
    src/mod_magnet_cache.c

LOCAL_MODULE := mod_magnet
LOCAL_PRELINK_MODULE := false 
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)

#####################################################################################
##mod_cml
include $(CLEAR_VARS)
LOCAL_CFLAGS += $(BUILD_OPTION_COMMON_CFLAGS)
LOCAL_LDFLAGS += $(BUILD_OPTION_COMMON_LDFLAGS)
ifeq ($(BUILD_OPTION_COMMON_SRC_STATIC),false)
LOCAL_SHARED_LIBRARIES += lib$(COMMON_LIBNAME)
else
LOCAL_WHOLE_STATIC_LIBRARIES += lib$(COMMON_LIBNAME)
endif

LOCAL_SRC_FILES := \
    src/mod_cml.c \
    src/mod_cml_lua.c \
    src/mod_cml_funcs.c 

LOCAL_MODULE := mod_cml
LOCAL_PRELINK_MODULE := false 
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)
#####################################################################################
##mod_trigger_b4_dl
include $(CLEAR_VARS)
LOCAL_CFLAGS += $(BUILD_OPTION_COMMON_CFLAGS) -W -Wshadow -pedantic -std=gnu99
LOCAL_LDFLAGS += $(BUILD_OPTION_COMMON_LDFLAGS)
ifeq ($(BUILD_OPTION_COMMON_SRC_STATIC),false)
LOCAL_SHARED_LIBRARIES += lib$(COMMON_LIBNAME)
else
LOCAL_WHOLE_STATIC_LIBRARIES += lib$(COMMON_LIBNAME)
endif

LOCAL_SRC_FILES := \
    src/mod_trigger_b4_dl.c

LOCAL_MODULE := mod_trigger_b4_dl
LOCAL_PRELINK_MODULE := false 
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)
#####################################################################################
##mod_mysql_vhost
include $(CLEAR_VARS)
LOCAL_CFLAGS += $(BUILD_OPTION_COMMON_CFLAGS) -W -Wshadow -pedantic -std=gnu99
LOCAL_LDFLAGS += $(BUILD_OPTION_COMMON_LDFLAGS)
ifeq ($(BUILD_OPTION_COMMON_SRC_STATIC),false)
LOCAL_SHARED_LIBRARIES += lib$(COMMON_LIBNAME)
else
LOCAL_WHOLE_STATIC_LIBRARIES += lib$(COMMON_LIBNAME)
endif

LOCAL_SRC_FILES := \
    $(am__liblightcomp_la_SOURCES_DIST) \
    src/mod_mysql_vhost.c

LOCAL_MODULE := mod_mysql_vhost
LOCAL_PRELINK_MODULE := false 
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)
#####################################################################################
##mod_cgi
include $(CLEAR_VARS)
LOCAL_CFLAGS += $(BUILD_OPTION_COMMON_CFLAGS) -W -Wshadow -pedantic -std=gnu99
LOCAL_LDFLAGS += $(BUILD_OPTION_COMMON_LDFLAGS)
ifeq ($(BUILD_OPTION_COMMON_SRC_STATIC),false)
LOCAL_SHARED_LIBRARIES += lib$(COMMON_LIBNAME)
else
LOCAL_WHOLE_STATIC_LIBRARIES += lib$(COMMON_LIBNAME)
endif

LOCAL_SRC_FILES := \
    src/mod_cgi.c

LOCAL_MODULE := mod_cgi
LOCAL_PRELINK_MODULE := false 
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)

#####################################################################################
##mod_staticfile
include $(CLEAR_VARS)
LOCAL_CFLAGS += $(BUILD_OPTION_COMMON_CFLAGS) -W -Wshadow -pedantic -std=gnu99
LOCAL_LDFLAGS += $(BUILD_OPTION_COMMON_LDFLAGS)
ifeq ($(BUILD_OPTION_COMMON_SRC_STATIC),false)
LOCAL_SHARED_LIBRARIES += lib$(COMMON_LIBNAME)
else
LOCAL_WHOLE_STATIC_LIBRARIES += lib$(COMMON_LIBNAME)
endif

LOCAL_SRC_FILES := \
    src/mod_staticfile.c 

LOCAL_MODULE := mod_staticfile
LOCAL_PRELINK_MODULE := false 
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)

#####################################################################################
##mod_dirlisting
include $(CLEAR_VARS)
LOCAL_CFLAGS += $(BUILD_OPTION_COMMON_CFLAGS) -W -Wshadow -pedantic -std=gnu99
LOCAL_LDFLAGS += $(BUILD_OPTION_COMMON_LDFLAGS)
ifeq ($(BUILD_OPTION_COMMON_SRC_STATIC),false)
LOCAL_SHARED_LIBRARIES += lib$(COMMON_LIBNAME)
else
LOCAL_WHOLE_STATIC_LIBRARIES += lib$(COMMON_LIBNAME)
endif

LOCAL_SRC_FILES := \
    src/mod_dirlisting.c 

LOCAL_MODULE := mod_dirlisting
LOCAL_PRELINK_MODULE := false 
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)

#####################################################################################
##mod_indexfile
include $(CLEAR_VARS)
LOCAL_CFLAGS += $(BUILD_OPTION_COMMON_CFLAGS) -W -Wshadow -pedantic -std=gnu99
LOCAL_LDFLAGS += $(BUILD_OPTION_COMMON_LDFLAGS)
ifeq ($(BUILD_OPTION_COMMON_SRC_STATIC),false)
LOCAL_SHARED_LIBRARIES += lib$(COMMON_LIBNAME)
else
LOCAL_WHOLE_STATIC_LIBRARIES += lib$(COMMON_LIBNAME)
endif

LOCAL_SRC_FILES := \
    src/mod_indexfile.c 

LOCAL_MODULE := mod_indexfile
LOCAL_PRELINK_MODULE := false 
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)

#####################################################################################
##mod_setenv
include $(CLEAR_VARS)
LOCAL_CFLAGS += $(BUILD_OPTION_COMMON_CFLAGS) -W -Wshadow -pedantic -std=gnu99
LOCAL_LDFLAGS += $(BUILD_OPTION_COMMON_LDFLAGS)
ifeq ($(BUILD_OPTION_COMMON_SRC_STATIC),false)
LOCAL_SHARED_LIBRARIES += lib$(COMMON_LIBNAME)
else
LOCAL_WHOLE_STATIC_LIBRARIES += lib$(COMMON_LIBNAME)
endif

LOCAL_SRC_FILES := \
    src/mod_setenv.c 

LOCAL_MODULE := mod_setenv
LOCAL_PRELINK_MODULE := false 
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)
#####################################################################################
##mod_alias
include $(CLEAR_VARS)
LOCAL_CFLAGS += $(BUILD_OPTION_COMMON_CFLAGS) -W -Wshadow -pedantic -std=gnu99
LOCAL_LDFLAGS += $(BUILD_OPTION_COMMON_LDFLAGS)
ifeq ($(BUILD_OPTION_COMMON_SRC_STATIC),false)
LOCAL_SHARED_LIBRARIES += lib$(COMMON_LIBNAME)
else
LOCAL_WHOLE_STATIC_LIBRARIES += lib$(COMMON_LIBNAME)
endif

LOCAL_SRC_FILES := \
    src/mod_alias.c 

LOCAL_MODULE := mod_alias
LOCAL_PRELINK_MODULE := false 
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)
#####################################################################################
##mod_userdir
include $(CLEAR_VARS)
LOCAL_CFLAGS += $(BUILD_OPTION_COMMON_CFLAGS) -W -Wshadow -pedantic -std=gnu99
LOCAL_LDFLAGS += $(BUILD_OPTION_COMMON_LDFLAGS)
ifeq ($(BUILD_OPTION_COMMON_SRC_STATIC),false)
LOCAL_SHARED_LIBRARIES += lib$(COMMON_LIBNAME)
else
LOCAL_WHOLE_STATIC_LIBRARIES += lib$(COMMON_LIBNAME)
endif

LOCAL_SRC_FILES := \
    src/mod_userdir.c 

LOCAL_MODULE := mod_userdir
LOCAL_PRELINK_MODULE := false 
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)
#####################################################################################
##mod_rrdtool
include $(CLEAR_VARS)
LOCAL_CFLAGS += $(BUILD_OPTION_COMMON_CFLAGS) -W -Wshadow -pedantic -std=gnu99
LOCAL_LDFLAGS += $(BUILD_OPTION_COMMON_LDFLAGS)
ifeq ($(BUILD_OPTION_COMMON_SRC_STATIC),false)
LOCAL_SHARED_LIBRARIES += lib$(COMMON_LIBNAME)
else
LOCAL_WHOLE_STATIC_LIBRARIES += lib$(COMMON_LIBNAME)
endif

LOCAL_SRC_FILES := \
    src/mod_rrdtool.c 

LOCAL_MODULE := mod_rrdtool
LOCAL_PRELINK_MODULE := false 
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)

#####################################################################################
##mod_usertrack
include $(CLEAR_VARS)
LOCAL_CFLAGS += $(BUILD_OPTION_COMMON_CFLAGS) -W -Wshadow -pedantic -std=gnu99
LOCAL_LDFLAGS += $(BUILD_OPTION_COMMON_LDFLAGS)
ifeq ($(BUILD_OPTION_COMMON_SRC_STATIC),false)
LOCAL_SHARED_LIBRARIES += lib$(COMMON_LIBNAME)
else
LOCAL_WHOLE_STATIC_LIBRARIES += lib$(COMMON_LIBNAME)
endif

LOCAL_SRC_FILES := \
    src/mod_usertrack.c 

LOCAL_MODULE := mod_usertrack
LOCAL_PRELINK_MODULE := false 
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)

#####################################################################################
##mod_proxy
include $(CLEAR_VARS)
LOCAL_CFLAGS += $(BUILD_OPTION_COMMON_CFLAGS) -W -Wshadow -pedantic -std=gnu99
LOCAL_LDFLAGS += $(BUILD_OPTION_COMMON_LDFLAGS)
ifeq ($(BUILD_OPTION_COMMON_SRC_STATIC),false)
LOCAL_SHARED_LIBRARIES += lib$(COMMON_LIBNAME)
else
LOCAL_WHOLE_STATIC_LIBRARIES += lib$(COMMON_LIBNAME)
endif

LOCAL_SRC_FILES := \
    src/mod_proxy.c 

LOCAL_MODULE := mod_proxy
LOCAL_PRELINK_MODULE := false 
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)

#####################################################################################
##mod_ssi
include $(CLEAR_VARS)
LOCAL_CFLAGS += $(BUILD_OPTION_COMMON_CFLAGS) -W -Wshadow -pedantic -std=gnu99
LOCAL_LDFLAGS += $(BUILD_OPTION_COMMON_LDFLAGS)
ifeq ($(BUILD_OPTION_COMMON_SRC_STATIC),false)
LOCAL_SHARED_LIBRARIES += lib$(COMMON_LIBNAME)
else
LOCAL_WHOLE_STATIC_LIBRARIES += lib$(COMMON_LIBNAME)
endif

LOCAL_SRC_FILES := \
    src/mod_ssi_exprparser.c \
    src/mod_ssi_expr.c \
    src/mod_ssi.c

LOCAL_MODULE := mod_ssi
LOCAL_PRELINK_MODULE := false 
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)

#####################################################################################
##mod_secdownload
include $(CLEAR_VARS)
LOCAL_CFLAGS += $(BUILD_OPTION_COMMON_CFLAGS) -W -Wshadow -pedantic -std=gnu99
LOCAL_LDFLAGS += $(BUILD_OPTION_COMMON_LDFLAGS)
ifeq ($(BUILD_OPTION_COMMON_SRC_STATIC),false)
LOCAL_SHARED_LIBRARIES += lib$(COMMON_LIBNAME)
else
LOCAL_WHOLE_STATIC_LIBRARIES += lib$(COMMON_LIBNAME)
endif

LOCAL_SRC_FILES := \
    src/mod_secure_download.c

LOCAL_MODULE := mod_secdownload
LOCAL_PRELINK_MODULE := false 
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)

#####################################################################################
##mod_expire
include $(CLEAR_VARS)
LOCAL_CFLAGS += $(BUILD_OPTION_COMMON_CFLAGS) -W -Wshadow -pedantic -std=gnu99
LOCAL_LDFLAGS += $(BUILD_OPTION_COMMON_LDFLAGS)
ifeq ($(BUILD_OPTION_COMMON_SRC_STATIC),false)
LOCAL_SHARED_LIBRARIES += lib$(COMMON_LIBNAME)
else
LOCAL_WHOLE_STATIC_LIBRARIES += lib$(COMMON_LIBNAME)
endif

LOCAL_SRC_FILES := \
    src/mod_expire.c

LOCAL_MODULE := mod_expire
LOCAL_PRELINK_MODULE := false 
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)

#####################################################################################
##mod_evhost
include $(CLEAR_VARS)
LOCAL_CFLAGS += $(BUILD_OPTION_COMMON_CFLAGS) -W -Wshadow -pedantic -std=gnu99
LOCAL_LDFLAGS += $(BUILD_OPTION_COMMON_LDFLAGS)
ifeq ($(BUILD_OPTION_COMMON_SRC_STATIC),false)
LOCAL_SHARED_LIBRARIES += lib$(COMMON_LIBNAME)
else
LOCAL_WHOLE_STATIC_LIBRARIES += lib$(COMMON_LIBNAME)
endif

LOCAL_SRC_FILES := \
    src/mod_evhost.c

LOCAL_MODULE := mod_evhost
LOCAL_PRELINK_MODULE := false 
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)

#####################################################################################
##mod_simple_vhost
include $(CLEAR_VARS)
LOCAL_CFLAGS += $(BUILD_OPTION_COMMON_CFLAGS) -W -Wshadow -pedantic -std=gnu99
LOCAL_LDFLAGS += $(BUILD_OPTION_COMMON_LDFLAGS)
ifeq ($(BUILD_OPTION_COMMON_SRC_STATIC),false)
LOCAL_SHARED_LIBRARIES += lib$(COMMON_LIBNAME)
else
LOCAL_WHOLE_STATIC_LIBRARIES += lib$(COMMON_LIBNAME)
endif

LOCAL_SRC_FILES := \
    src/mod_simple_vhost.c

LOCAL_MODULE := mod_simple_vhost
LOCAL_PRELINK_MODULE := false 
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)

#####################################################################################
##mod_fastcgi
include $(CLEAR_VARS)
LOCAL_CFLAGS += $(BUILD_OPTION_COMMON_CFLAGS) -W -Wshadow -pedantic -std=gnu99
LOCAL_LDFLAGS += $(BUILD_OPTION_COMMON_LDFLAGS)
ifeq ($(BUILD_OPTION_COMMON_SRC_STATIC),false)
LOCAL_SHARED_LIBRARIES += lib$(COMMON_LIBNAME)
else
LOCAL_WHOLE_STATIC_LIBRARIES += lib$(COMMON_LIBNAME)
endif

LOCAL_SRC_FILES := \
    src/mod_fastcgi.c

LOCAL_MODULE := mod_fastcgi
LOCAL_PRELINK_MODULE := false 
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)

#####################################################################################
##mod_extforward
include $(CLEAR_VARS)
LOCAL_CFLAGS += $(BUILD_OPTION_COMMON_CFLAGS) -W -Wshadow -pedantic -std=gnu99
LOCAL_LDFLAGS += $(BUILD_OPTION_COMMON_LDFLAGS)
ifeq ($(BUILD_OPTION_COMMON_SRC_STATIC),false)
LOCAL_SHARED_LIBRARIES += lib$(COMMON_LIBNAME)
else
LOCAL_WHOLE_STATIC_LIBRARIES += lib$(COMMON_LIBNAME)
endif

LOCAL_SRC_FILES := \
    src/mod_extforward.c

LOCAL_MODULE := mod_extforward
LOCAL_PRELINK_MODULE := false 
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)

#####################################################################################
##mod_access
include $(CLEAR_VARS)
LOCAL_CFLAGS += $(BUILD_OPTION_COMMON_CFLAGS) -W -Wshadow -pedantic -std=gnu99
LOCAL_LDFLAGS += $(BUILD_OPTION_COMMON_LDFLAGS)
ifeq ($(BUILD_OPTION_COMMON_SRC_STATIC),false)
LOCAL_SHARED_LIBRARIES += lib$(COMMON_LIBNAME)
else
LOCAL_WHOLE_STATIC_LIBRARIES += lib$(COMMON_LIBNAME)
endif

LOCAL_SRC_FILES := \
    src/mod_access.c

LOCAL_MODULE := mod_access
LOCAL_PRELINK_MODULE := false 
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)

#####################################################################################
##mod_compress
include $(CLEAR_VARS)
LOCAL_CFLAGS += $(BUILD_OPTION_COMMON_CFLAGS) -W -Wshadow -pedantic -std=gnu99 -I$(PDK_ROOT)/prebuilt/ndk/android-ndk-r4/platforms/android-8/arch-arm/usr/include
LOCAL_LDFLAGS += $(BUILD_OPTION_COMMON_LDFLAGS) -lz
ifeq ($(BUILD_OPTION_COMMON_SRC_STATIC),false)
LOCAL_SHARED_LIBRARIES += lib$(COMMON_LIBNAME)
else
LOCAL_WHOLE_STATIC_LIBRARIES += lib$(COMMON_LIBNAME)
endif

LOCAL_SRC_FILES := \
    src/mod_compress.c

LOCAL_MODULE := mod_compress
LOCAL_PRELINK_MODULE := false 
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)

#####################################################################################
##modlighttpd_auth
include $(CLEAR_VARS)
LOCAL_CFLAGS += $(BUILD_OPTION_COMMON_CFLAGS) -W -Wshadow -pedantic -std=gnu99
LOCAL_LDFLAGS += $(BUILD_OPTION_COMMON_LDFLAGS)
ifeq ($(BUILD_OPTION_COMMON_SRC_STATIC),false)
LOCAL_SHARED_LIBRARIES += lib$(COMMON_LIBNAME)
else
LOCAL_WHOLE_STATIC_LIBRARIES += lib$(COMMON_LIBNAME)
endif

LOCAL_SRC_FILES := \
    src/mod_auth.c \
    src/http_auth_digest.c \
    src/http_auth.c

LOCAL_MODULE := mod_auth
LOCAL_PRELINK_MODULE := false 
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)
#####################################################################################
##mod_rewrite
include $(CLEAR_VARS)
LOCAL_CFLAGS += $(BUILD_OPTION_COMMON_CFLAGS) -W -Wshadow -pedantic -std=gnu99
LOCAL_LDFLAGS += $(BUILD_OPTION_COMMON_LDFLAGS)
ifeq ($(BUILD_OPTION_COMMON_SRC_STATIC),false)
LOCAL_SHARED_LIBRARIES += lib$(COMMON_LIBNAME)
else
LOCAL_WHOLE_STATIC_LIBRARIES += lib$(COMMON_LIBNAME)
endif

LOCAL_SRC_FILES := \
    src/mod_rewrite.c

LOCAL_MODULE := mod_rewrite
LOCAL_PRELINK_MODULE := false 
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)

#####################################################################################
##mod_redirect
include $(CLEAR_VARS)
LOCAL_CFLAGS += $(BUILD_OPTION_COMMON_CFLAGS) -W -Wshadow -pedantic -std=gnu99
LOCAL_LDFLAGS += $(BUILD_OPTION_COMMON_LDFLAGS)
ifeq ($(BUILD_OPTION_COMMON_SRC_STATIC),false)
LOCAL_SHARED_LIBRARIES += lib$(COMMON_LIBNAME)
else
LOCAL_WHOLE_STATIC_LIBRARIES += lib$(COMMON_LIBNAME)
endif

LOCAL_SRC_FILES := \
    src/mod_redirect.c

LOCAL_MODULE := mod_redirect
LOCAL_PRELINK_MODULE := false 
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)

#####################################################################################
##mod_status
include $(CLEAR_VARS)
LOCAL_CFLAGS += $(BUILD_OPTION_COMMON_CFLAGS) -W -Wshadow -pedantic -std=gnu99
LOCAL_LDFLAGS += $(BUILD_OPTION_COMMON_LDFLAGS)
ifeq ($(BUILD_OPTION_COMMON_SRC_STATIC),false)
LOCAL_SHARED_LIBRARIES += lib$(COMMON_LIBNAME)
else
LOCAL_WHOLE_STATIC_LIBRARIES += lib$(COMMON_LIBNAME)
endif

LOCAL_SRC_FILES := \
    src/mod_status.c

LOCAL_MODULE := mod_status
LOCAL_PRELINK_MODULE := false 
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)

#####################################################################################
##mod_accesslog
include $(CLEAR_VARS)
LOCAL_CFLAGS += $(BUILD_OPTION_COMMON_CFLAGS) -W -Wshadow -pedantic -std=gnu99
LOCAL_LDFLAGS += $(BUILD_OPTION_COMMON_LDFLAGS)
ifeq ($(BUILD_OPTION_COMMON_SRC_STATIC),false)
LOCAL_SHARED_LIBRARIES += lib$(COMMON_LIBNAME)
else
LOCAL_WHOLE_STATIC_LIBRARIES += lib$(COMMON_LIBNAME)
endif

LOCAL_SRC_FILES := \
    src/mod_accesslog.c

LOCAL_MODULE := mod_accesslog
LOCAL_PRELINK_MODULE := false 
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)

#####################################################################################
##lighttpd
include $(CLEAR_VARS)
LOCAL_CFLAGS += $(BUILD_OPTION_COMMON_CFLAGS) -W -Wshadow -pedantic -std=gnu99 -DLIBRARY_DIR="\"/system/lib\""
ifeq ($(BUILD_OPTION_COMMON_SRC_STATIC),false)
LOCAL_SHARED_LIBRARIES += lib$(COMMON_LIBNAME)
LOCAL_LDFLAGS += $(BUILD_OPTION_COMMON_LDFLAGS) -l$(COMMON_LIBNAME) -ldl
else
LOCAL_WHOLE_STATIC_LIBRARIES += lib$(COMMON_LIBNAME)
LOCAL_LDFLAGS += $(BUILD_OPTION_COMMON_LDFLAGS) -ldl -Wl,--whole-archive -l$(COMMON_LIBNAME) -Wl,-no--whole-archive
endif

LOCAL_SRC_FILES := \
	src/server.c src/response.c src/connections.c src/network.c \
    src/configfile.c src/configparser.c src/request.c src/proc_open.c \
    src/plugin.c

LOCAL_MODULE := lighttpd
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := samples

include $(BUILD_EXECUTABLE)

#####################################################################################
##lighttpd-angel
include $(CLEAR_VARS)
LOCAL_CFLAGS += $(BUILD_OPTION_COMMON_CFLAGS) -W -Wshadow -pedantic -std=gnu99 -DLIBRARY_DIR="\"/system/lib\"" -DSBIN_DIR="\"/system/bin\""
LOCAL_LDFLAGS += $(BUILD_OPTION_COMMON_LDFLAGS)

LOCAL_SRC_FILES := \
    src/lighttpd-angel.c

LOCAL_MODULE := lighttpd-angel
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := samples

include $(BUILD_EXECUTABLE)

###########################################################################################################################################################

