# 
#judekid@gmail.com
# 
# Eric Chan 2009.07.29
#

am__liblightcomp_la_SOURCES_DIST = src/buffer.c src/log.c src/keyvalue.c src/chunk.c \
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
src = src/server.c src/response.c src/connections.c src/network.c \
      src/configfile.c src/configparser.c src/request.c src/proc_open.c

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
####################################################################################
##mod_flv_streaming 
#LOCAL_LDLIBS += -ldl
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DHAVE_VERSION_H -I. -I..-D_REENTRANT -D__EXTENSIONS__ -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_LARGE_FILES -g -O2 -Wall -W -Wshadow -pedantic -std=gnu99
LOCAL_LDFLAGS +=  -lpcre

LOCAL_SRC_FILES := \
    $(am__liblightcomp_la_SOURCES_DIST) \
    src/mod_flv_streaming.c

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src
LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_PRELINK_MODULE := false 

LOCAL_MODULE := mod_flv_streaming
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)

#####################################################################################
##mod_evasive
include $(CLEAR_VARS)
LOCAL_LDLIBS += -ldl
LOCAL_LDFLAGS +=  -lpcre
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DHAVE_VERSION_H -I. -I..-D_REENTRANT -D__EXTENSIONS__ -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_LARGE_FILES -g -O2 -Wall -W -Wshadow -pedantic -std=gnu99

LOCAL_SRC_FILES := \
    $(am__liblightcomp_la_SOURCES_DIST) \
    src/mod_evasive.c

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src
LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_PRELINK_MODULE := false 

LOCAL_MODULE := mod_evasive
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)
#####################################################################################
##mod_webdav
include $(CLEAR_VARS)
LOCAL_LDLIBS += -ldl
LOCAL_LDFLAGS +=  -lpcre
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DHAVE_VERSION_H -I. -I..-D_REENTRANT -D__EXTENSIONS__ -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_LARGE_FILES -g -O2 -Wall -W -Wshadow -pedantic -std=gnu99

LOCAL_SRC_FILES := \
    $(am__liblightcomp_la_SOURCES_DIST) \
    src/mod_webdav.c

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src
LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_PRELINK_MODULE := false 

LOCAL_MODULE := mod_webdav
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)
#####################################################################################
##mod_magnet
include $(CLEAR_VARS)
LOCAL_LDLIBS += -ldl
LOCAL_LDFLAGS +=  -lpcre
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DHAVE_VERSION_H -I. -I..-D_REENTRANT -D__EXTENSIONS__ -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_LARGE_FILES -g -O2 -Wall -W -Wshadow -pedantic -std=gnu99

LOCAL_SRC_FILES := \
    $(am__liblightcomp_la_SOURCES_DIST) \
    src/mod_magnet.c \
    src/mod_magnet_cache.c

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src
LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_PRELINK_MODULE := false 

LOCAL_MODULE := mod_magnet
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)
#####################################################################################
##mod_cml
include $(CLEAR_VARS)
LOCAL_LDLIBS += -ldl
LOCAL_LDFLAGS +=  -lpcre
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DHAVE_VERSION_H -I. -I..-D_REENTRANT -D__EXTENSIONS__ -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_LARGE_FILES -g -O2 -Wall
 -W -Wshadow -pedantic -std=gnu99

LOCAL_SRC_FILES := \
    $(am__liblightcomp_la_SOURCES_DIST) \
    src/mod_cml.c \
    src/mod_cml_lua.c \
    src/mod_cml_funcs.c 

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src
LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_PRELINK_MODULE := false 

LOCAL_MODULE := mod_cml
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)
#####################################################################################
##mod_trigger_b4_dl
include $(CLEAR_VARS)
LOCAL_LDLIBS += -ldl
LOCAL_LDFLAGS +=  -lpcre
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DHAVE_VERSION_H -I. -I..-D_REENTRANT -D__EXTENSIONS__ -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_LARGE_FILES -g -O2 -Wall -W -Wshadow -pedantic -std=gnu99

LOCAL_SRC_FILES := \
    $(am__liblightcomp_la_SOURCES_DIST) \
    src/mod_trigger_b4_dl.c

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src
LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_PRELINK_MODULE := false 

LOCAL_MODULE := mod_trigger_b4_dl
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)
#####################################################################################
##mod_mysql_vhost
include $(CLEAR_VARS)
LOCAL_LDLIBS += -ldl
LOCAL_LDFLAGS +=  -lpcre
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DHAVE_VERSION_H -I. -I..-D_REENTRANT -D__EXTENSIONS__ -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_LARGE_FILES -g -O2 -Wall -W -Wshadow -pedantic -std=gnu99

LOCAL_SRC_FILES := \
    $(am__liblightcomp_la_SOURCES_DIST) \
    src/mod_mysql_vhost.c

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src
LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_PRELINK_MODULE := false 

LOCAL_MODULE := mod_mysql_vhost
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)
#####################################################################################
##mod_cgi
include $(CLEAR_VARS)
LOCAL_LDLIBS += -ldl
LOCAL_LDFLAGS +=  -lpcre
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DHAVE_VERSION_H -I. -I..  -I$(LOCAL_PATH)/src -D_REENTRANT -D__EXTENSIONS__ -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_LARGE_FILES  -g -O2 -Wall -W -Wshadow -pedantic -std=gnu99

LOCAL_SRC_FILES := \
    $(am__liblightcomp_la_SOURCES_DIST) \
    src/mod_cgi.c

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src
LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_PRELINK_MODULE := false 

LOCAL_MODULE := mod_cgi
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)

#####################################################################################
##mod_staticfile
include $(CLEAR_VARS)
LOCAL_LDLIBS += -ldl
LOCAL_LDFLAGS +=  -lpcre
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DHAVE_VERSION_H -I. -I..-D_REENTRANT -D__EXTENSIONS__ -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_LARGE_FILES -g -O2 -Wall -W -Wshadow -pedantic -std=gnu99

LOCAL_SRC_FILES := \
    $(am__liblightcomp_la_SOURCES_DIST) \
    src/mod_staticfile.c 

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src
LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_PRELINK_MODULE := false 

LOCAL_MODULE := mod_staticfile
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)
#####################################################################################
##mod_dirlisting
include $(CLEAR_VARS)
LOCAL_LDLIBS += -ldl
LOCAL_LDFLAGS +=  -lpcre
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DHAVE_VERSION_H -I. -I..-D_REENTRANT -D__EXTENSIONS__ -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_LARGE_FILES -g -O2 -Wall -W -Wshadow -pedantic -std=gnu99

LOCAL_SRC_FILES := \
    $(am__liblightcomp_la_SOURCES_DIST) \
    src/mod_dirlisting.c 

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src
LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_PRELINK_MODULE := false 

LOCAL_MODULE := mod_dirlisting
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)
#####################################################################################
##mod_indexfile
include $(CLEAR_VARS)
LOCAL_LDLIBS += -ldl
LOCAL_LDFLAGS +=  -lpcre
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DHAVE_VERSION_H -I. -I..-D_REENTRANT -D__EXTENSIONS__ -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_LARGE_FILES -g -O2 -Wall -W -Wshadow -pedantic -std=gnu99

LOCAL_SRC_FILES := \
    $(am__liblightcomp_la_SOURCES_DIST) \
    src/mod_indexfile.c 

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src
LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_PRELINK_MODULE := false 

LOCAL_MODULE := mod_indexfile
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)
#####################################################################################
##mod_setenv
include $(CLEAR_VARS)
LOCAL_LDLIBS += -ldl
LOCAL_LDFLAGS +=  -lpcre
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DHAVE_VERSION_H -I. -I..-D_REENTRANT -D__EXTENSIONS__ -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_LARGE_FILES -g -O2 -Wall -W -Wshadow -pedantic -std=gnu99

LOCAL_SRC_FILES := \
    $(am__liblightcomp_la_SOURCES_DIST) \
    src/mod_setenv.c 

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src
LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_PRELINK_MODULE := false 

LOCAL_MODULE := mod_setenv
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)
#####################################################################################
##mod_alias
include $(CLEAR_VARS)
LOCAL_LDLIBS += -ldl
LOCAL_LDFLAGS +=  -lpcre
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DHAVE_VERSION_H -I. -I..-D_REENTRANT -D__EXTENSIONS__ -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_LARGE_FILES -g -O2 -Wall -W -Wshadow -pedantic -std=gnu99

LOCAL_SRC_FILES := \
    $(am__liblightcomp_la_SOURCES_DIST) \
    src/mod_alias.c 

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src
LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_PRELINK_MODULE := false 

LOCAL_MODULE := mod_alias
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)
#####################################################################################
##mod_userdir
include $(CLEAR_VARS)
LOCAL_LDLIBS += -ldl
LOCAL_LDFLAGS +=  -lpcre
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DHAVE_VERSION_H -I. -I..-D_REENTRANT -D__EXTENSIONS__ -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_LARGE_FILES -g -O2 -Wall -W -Wshadow -pedantic -std=gnu99

LOCAL_SRC_FILES := \
    $(am__liblightcomp_la_SOURCES_DIST) \
    src/mod_userdir.c 

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src
LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_PRELINK_MODULE := false 

LOCAL_MODULE := mod_userdir
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)
#####################################################################################
##mod_rrdtool
include $(CLEAR_VARS)
LOCAL_LDLIBS += -ldl
LOCAL_LDFLAGS +=  -lpcre
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DHAVE_VERSION_H -I. -I..-D_REENTRANT -D__EXTENSIONS__ -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_LARGE_FILES -g -O2 -Wall -W -Wshadow -pedantic -std=gnu99

LOCAL_SRC_FILES := \
    $(am__liblightcomp_la_SOURCES_DIST) \
    src/mod_rrdtool.c 

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src
LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_PRELINK_MODULE := false 

LOCAL_MODULE := mod_rrdtool
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)
#####################################################################################
##mod_usertrack
include $(CLEAR_VARS)
LOCAL_LDLIBS += -ldl
LOCAL_LDFLAGS +=  -lpcre
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DHAVE_VERSION_H -I. -I..-D_REENTRANT -D__EXTENSIONS__ -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_LARGE_FILES -g -O2 -Wall -W -Wshadow -pedantic -std=gnu99

LOCAL_SRC_FILES := \
    $(am__liblightcomp_la_SOURCES_DIST) \
    src/mod_usertrack.c 

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src
LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_PRELINK_MODULE := false 

LOCAL_MODULE := mod_usertrack
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)
#####################################################################################
##mod_proxy
include $(CLEAR_VARS)
LOCAL_LDLIBS += -ldl
LOCAL_LDFLAGS +=  -lpcre
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DHAVE_VERSION_H -I. -I..-D_REENTRANT -D__EXTENSIONS__ -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_LARGE_FILES -g -O2 -Wall -W -Wshadow -pedantic -std=gnu99

LOCAL_SRC_FILES := \
    $(am__liblightcomp_la_SOURCES_DIST) \
    src/mod_proxy.c 

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src
LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_PRELINK_MODULE := false 

LOCAL_MODULE := mod_proxy
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)
#####################################################################################
##mod_ssi
include $(CLEAR_VARS)
LOCAL_LDLIBS += -ldl
LOCAL_LDFLAGS +=  -lpcre
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DHAVE_VERSION_H -I. -I..-D_REENTRANT -D__EXTENSIONS__ -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_LARGE_FILES -g -O2 -Wall -W -Wshadow -pedantic -std=gnu99

LOCAL_SRC_FILES := \
    $(am__liblightcomp_la_SOURCES_DIST) \
    src/mod_ssi_exprparser.c \
    src/mod_ssi_expr.c \
    src/mod_ssi.c

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src
LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_PRELINK_MODULE := false 

LOCAL_MODULE := mod_ssi
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)
#####################################################################################
##mod_secdownload
include $(CLEAR_VARS)
LOCAL_LDLIBS += -ldl
LOCAL_LDFLAGS +=  -lpcre
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DHAVE_VERSION_H -I. -I..-D_REENTRANT -D__EXTENSIONS__ -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_LARGE_FILES -g -O2 -Wall -W -Wshadow -pedantic -std=gnu99

LOCAL_SRC_FILES := \
    $(am__liblightcomp_la_SOURCES_DIST) \
    src/mod_secure_download.c

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src
LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_PRELINK_MODULE := false 

LOCAL_MODULE := mod_secdownload
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)
#####################################################################################
##mod_expire
include $(CLEAR_VARS)
LOCAL_LDLIBS += -ldl
LOCAL_LDFLAGS +=  -lpcre
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DHAVE_VERSION_H -I. -I..-D_REENTRANT -D__EXTENSIONS__ -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_LARGE_FILES -g -O2 -Wall -W -Wshadow -pedantic -std=gnu99

LOCAL_SRC_FILES := \
    $(am__liblightcomp_la_SOURCES_DIST) \
    src/mod_expire.c

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src
LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_PRELINK_MODULE := false 

LOCAL_MODULE := mod_expire
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)
#####################################################################################
##mod_evhost
include $(CLEAR_VARS)
LOCAL_LDLIBS += -ldl
LOCAL_LDFLAGS +=  -lpcre
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DHAVE_VERSION_H -I. -I..-D_REENTRANT -D__EXTENSIONS__ -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_LARGE_FILES -g -O2 -Wall -W -Wshadow -pedantic -std=gnu99

LOCAL_SRC_FILES := \
    $(am__liblightcomp_la_SOURCES_DIST) \
    src/mod_evhost.c

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src
LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_PRELINK_MODULE := false 

LOCAL_MODULE := mod_evhost
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)
#####################################################################################
##mod_simple_vhost
include $(CLEAR_VARS)
LOCAL_LDLIBS += -ldl
LOCAL_LDFLAGS +=  -lpcre
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DHAVE_VERSION_H -I. -I..-D_REENTRANT -D__EXTENSIONS__ -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_LARGE_FILES -g -O2 -Wall -W -Wshadow -pedantic -std=gnu99

LOCAL_SRC_FILES := \
    $(am__liblightcomp_la_SOURCES_DIST) \
    src/mod_simple_vhost.c

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src
LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_PRELINK_MODULE := false 

LOCAL_MODULE := mod_simple_vhost
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)
#####################################################################################
##mod_fastcgi
include $(CLEAR_VARS)
LOCAL_LDLIBS += -ldl
LOCAL_LDFLAGS +=  -lpcre
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DHAVE_VERSION_H -I. -I..-D_REENTRANT -D__EXTENSIONS__ -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_LARGE_FILES -g -O2 -Wall -W -Wshadow -pedantic -std=gnu99

LOCAL_SRC_FILES := \
    $(am__liblightcomp_la_SOURCES_DIST) \
    src/mod_fastcgi.c

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src
LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_PRELINK_MODULE := false 

LOCAL_MODULE := mod_fastcgi
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)
#####################################################################################
##mod_extforward
include $(CLEAR_VARS)
LOCAL_LDLIBS += -ldl
LOCAL_LDFLAGS +=  -lpcre
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DHAVE_VERSION_H -I. -I..-D_REENTRANT -D__EXTENSIONS__ -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_LARGE_FILES -g -O2 -Wall -W -Wshadow -pedantic -std=gnu99

LOCAL_SRC_FILES := \
    $(am__liblightcomp_la_SOURCES_DIST) \
    src/mod_extforward.c

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src
LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_PRELINK_MODULE := false 

LOCAL_MODULE := mod_extforward
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)
#####################################################################################
##mod_access
include $(CLEAR_VARS)
LOCAL_LDLIBS += -ldl
LOCAL_LDFLAGS +=  -lpcre
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DHAVE_VERSION_H -I. -I..-D_REENTRANT -D__EXTENSIONS__ -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_LARGE_FILES -g -O2 -Wall -W -Wshadow -pedantic -std=gnu99

LOCAL_SRC_FILES := \
    $(am__liblightcomp_la_SOURCES_DIST) \
    src/mod_access.c

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src
LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_PRELINK_MODULE := false 

LOCAL_MODULE := mod_access
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)
#####################################################################################
##mod_compress
include $(CLEAR_VARS)
LOCAL_LDLIBS += -ldl
LOCAL_LDFLAGS +=  -lpcre -lz
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DHAVE_VERSION_H -I. -I.. -I/Volumes/Data/develop/Android/PDK/prebuilt/ndk/android-ndk-r4/platforms/android-8/arch-arm/usr/include -D_REENTRANT -D__EXTENSIONS__ -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_LARGE_FILES -g -O2 -Wall -W -Wshadow -pedantic -std=gnu99

LOCAL_SRC_FILES := \
    $(am__liblightcomp_la_SOURCES_DIST) \
    src/mod_compress.c

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src
LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_PRELINK_MODULE := false 

LOCAL_MODULE := mod_compress
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)
#####################################################################################
##modlighttpd_auth
include $(CLEAR_VARS)
LOCAL_LDLIBS += -ldl
LOCAL_LDFLAGS +=  -lpcre
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DHAVE_VERSION_H -I. -I..-D_REENTRANT -D__EXTENSIONS__ -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_LARGE_FILES -g -O2 -Wall -W -Wshadow -pedantic -std=gnu99

LOCAL_SRC_FILES := \
    $(am__liblightcomp_la_SOURCES_DIST) \
    src/mod_auth.c \
    src/http_auth_digest.c \
    src/http_auth.c

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src
LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_PRELINK_MODULE := false 

LOCAL_MODULE := mod_auth
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)
#####################################################################################
##mod_rewrite
include $(CLEAR_VARS)
LOCAL_LDLIBS += -ldl
LOCAL_LDFLAGS +=  -lpcre
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DHAVE_VERSION_H -I. -I..-D_REENTRANT -D__EXTENSIONS__ -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_LARGE_FILES -g -O2 -Wall -W -Wshadow -pedantic -std=gnu99

LOCAL_SRC_FILES := \
    $(am__liblightcomp_la_SOURCES_DIST) \
    src/mod_rewrite.c

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src
LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_PRELINK_MODULE := false 

LOCAL_MODULE := mod_rewrite
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)
#####################################################################################
##mod_redirect
include $(CLEAR_VARS)
LOCAL_LDLIBS += -ldl
LOCAL_LDFLAGS +=  -lpcre
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DHAVE_VERSION_H -I. -I..-D_REENTRANT -D__EXTENSIONS__ -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_LARGE_FILES -g -O2 -Wall -W -Wshadow -pedantic -std=gnu99

LOCAL_SRC_FILES := \
    $(am__liblightcomp_la_SOURCES_DIST) \
    src/mod_redirect.c

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src
LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_PRELINK_MODULE := false 

LOCAL_MODULE := mod_redirect
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)
#####################################################################################
##mod_status
include $(CLEAR_VARS)
LOCAL_LDLIBS += -ldl
LOCAL_LDFLAGS +=  -lpcre
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DHAVE_VERSION_H -I. -I..-D_REENTRANT -D__EXTENSIONS__ -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_LARGE_FILES -g -O2 -Wall -W -Wshadow -pedantic -std=gnu99

LOCAL_SRC_FILES := \
    $(am__liblightcomp_la_SOURCES_DIST) \
    src/mod_status.c

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src
LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_PRELINK_MODULE := false 

LOCAL_MODULE := mod_status
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)
#####################################################################################
##mod_accesslog
include $(CLEAR_VARS)
LOCAL_LDLIBS += -ldl
LOCAL_LDFLAGS +=  -lpcre
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DHAVE_VERSION_H -I. -I..-D_REENTRANT -D__EXTENSIONS__ -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -D_LARGE_FILES -g -O2 -Wall -W -Wshadow -pedantic -std=gnu99

LOCAL_SRC_FILES := \
    $(am__liblightcomp_la_SOURCES_DIST) \
    src/mod_accesslog.c

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src
LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_PRELINK_MODULE := false 

LOCAL_MODULE := mod_accesslog
LOCAL_MODULE_TAGS := samples

include $(BUILD_SHARED_LIBRARY)
#####################################################################################
##lighttpd
include $(CLEAR_VARS)
LOCAL_LDLIBS += -ldl
LOCAL_LDFLAGS +=  -lpcre -ldl
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DHAVE_VERSION_H -g -O2 -Wall -W -Wshadow -pedantic -std=gnu99 -export-dynamic -DLIBRARY_DIR="\"/system/lib\""

LOCAL_SRC_FILES := \
    $(am__liblightcomp_la_SOURCES_DIST) \
    $(src) \
    src/plugin.c

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src
LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_MODULE := lighttpd
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := samples

include $(BUILD_EXECUTABLE)

#####################################################################################
##lighttpd-angel
include $(CLEAR_VARS)
LOCAL_LDLIBS += -ldl
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DHAVE_VERSION_H -g -O2 -Wall -W -Wshadow -pedantic -std=gnu99 -export-dynamic -DLIBRARY_DIR="\"/system/lib\"" -DSBIN_DIR="\"/system/sbin\""

LOCAL_SRC_FILES := \
    src/lighttpd-angel.c

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src
LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_MODULE := lighttpd-angel

LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := samples

include $(BUILD_EXECUTABLE)
###########################################################################################################################################################
