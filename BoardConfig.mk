USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/baffinlite/BoardConfigVendor.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := baffinlite,i9060,gt-i9060,GT-I9060,gt-i9060l,GT-I9060L,

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/baffinlite/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/samsung/baffinlite/bluetooth/libbt_vndcfg_i9060.txt

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging

# CMHW
BOARD_HARDWARE_CLASS := hardware/samsung/cmhw/ device/samsung/baffinlite/cmhw/

# Compat
TARGET_USES_LOGD := false

# Connectivity - Wi-Fi
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
BOARD_WLAN_DEVICE_REV       := bcm4330_1
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_NAME     := "dhd"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/wifi/bcmdhd_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_MODULE_AP_ARG   := "firmware_path=/system/etc/wifi/bcmdhd_apsta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_BAND                   := 802_11_ABG
BOARD_NO_WIFI_HAL           := true
BOARD_HAVE_SAMSUNG_WIFI     := true

# Fonts
# Include an expanded selection of noto-fonts (external/noto-fonts)
EXTENDED_FONT_FOOTPRINT := true

# Hardware rendering / GPU Stuff
USE_OPENGL_RENDERER := true
BOARD_USE_MHEAP_SCREENSHOT := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
COMMON_GLOBAL_CFLAGS += -DSAMSUNG_CAMERA_LEGACY -DNEEDS_VECTORIMPL_SYMBOLS -DEGL_NEEDS_FNW -DSAMSUNG_CODEC_SUPPORT -DJAVA_HWC
TARGET_USES_ION := true
HWUI_COMPILE_FOR_PERF := true

# healthd
BOARD_HAL_STATIC_LIBRARIES := libhealthd.java

# jemalloc causes a lot of random crash on free()
MALLOC_IMPL := dlmalloc

# Kernel
TARGET_KERNEL_CONFIG := cyanogenmod_baffinlite_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/baffinlite2
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x81e00000
BOARD_KERNEL_PAGESIZE := 4096

# libutils
COMMON_GLOBAL_CFLAGS += -DREFBASE_JB_MR1_COMPAT_SYMBOLS

# libwvm.so
COMMON_GLOBAL_CFLAGS += -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL

# OMX
BOARD_HAVE_CODEC_SUPPORT := SAMSUNG_CODEC_SUPPORT
COMMON_GLOBAL_CFLAGS += -DSAMSUNG_OMX
BOARD_NONBLOCK_MODE_PROCESS := true
BOARD_USE_STOREMETADATA := true
BOARD_USE_METADATABUFFERTYPE := true
BOARD_USES_MFC_FPS := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610334208
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5767168000
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_FLASH_BLOCK_SIZE := 131072

# Platform
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := java
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
TARGET_BOOTLOADER_BOARD_NAME := java
TARGET_SPECIFIC_HEADER_PATH := device/samsung/baffinlite/include

# Resolution
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# RIL
BOARD_VENDOR := samsung
BOARD_RIL_CLASS := ../../../device/samsung/baffinlite/ril/
PRODUCT_PACKAGES += com.android.services.telephony.common

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/baffinlite/recovery.fstab
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"

#Recovery PhilZ
RECOVERY_VARIANT := philz
TARGET_COMMON_NAME := Galaxy Grand Neo
BOOTLOADER_CMD_ARG := "download"
# KERNEL_EXFAT_MODULE_NAME := "exfat"
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480
BOARD_HAS_LOW_RESOLUTION := true
BRIGHTNESS_SYS_FILE := "/sys/class/backlight/panel/brightness"
BOARD_USE_B_SLOT_PROTOCOL := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
#fix fr the graphic glitch 
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_HAS_FLIPPED_SCREEN := true

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/baffinlite/sepolicy

BOARD_SEPOLICY_UNION += \
    file_contexts \
    property_contexts \
    service_contexts \
    bkmgrd.te \
    device.te \
    geomagneticd.te \
    gpsd.te \
    init.te \
    immvibed.te \
    kernel.te \
    macloader.te \
    rild.te \
    shell.te \
    system_app.te \
    system_server.te \
    tvserver.te \
    vclmk.te

# SkTextBox for libtvout
BOARD_USES_SKTEXTBOX := true

