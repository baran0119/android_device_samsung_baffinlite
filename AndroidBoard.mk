LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)

# Hack
# $(shell mkdir -p out/target/product/baffinlite/obj/SHARED_LIBRARIES/libuip_intermediates)
# $(shell touch out/target/product/baffinlite/obj/SHARED_LIBRARIES/libuip_intermediates/export_includes)
# $(shell cp vendor/samsung/baffinlite/proprietary/lib/libuip.so out/target/product/baffinlite/obj/lib/libuip.so)

# include the non-open-source counterpart to this file
-include vendor/samsung/baffinlite/AndroidBoardVendor.mk
