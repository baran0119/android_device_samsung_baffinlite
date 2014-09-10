# inherit from the proprietary version
-include vendor/samsung/baffinlite/BoardConfigVendor.mk

# Platform
TARGET_ARCH 						:= arm
TARGET_NO_BOOTLOADER 				:= true
TARGET_BOARD_PLATFORM 				:= java
TARGET_CPU_ABI 						:= armeabi-v7a
TARGET_CPU_ABI2 					:= armeabi
TARGET_ARCH_VARIANT 				:= armv7-a-neon
TARGET_CPU_VARIANT 					:= cortex-a7
TARGET_BOOTLOADER_BOARD_NAME 		:= java
BOARD_USES_BROADCOM_HARDWARE		:= true
TARGET_SPECIFIC_HEADER_PATH 		:= device/samsung/baffinlite/include

BOARD_KERNEL_CMDLINE 				:= 
BOARD_KERNEL_BASE 					:= 0x81e00000
BOARD_KERNEL_PAGESIZE 				:= 4096

TARGET_USERIMAGES_USE_EXT4 			:= true
# TARGET_USERIMAGES_USE_F2FS 		:= true
TARGET_SETS_FSTAB 					:= true
BOARD_BOOTIMAGE_PARTITION_SIZE 		:= 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE 	:= 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE 	:= 1610334208
BOARD_USERDATAIMAGE_PARTITION_SIZE 	:= 5767168000
BOARD_FLASH_BLOCK_SIZE 				:= 131072

# Use GCC 4.8 toolchain
# TARGET_GCC_VERSION_EXP 			:= 4.6
# TARGET_GCC_VERSION_EXP 			:= 4.8-sm-kk-mr1
# TARGET_GCC_VERSION_EXP 			:= 4.7-linaro
# TARGET_KERNEL_CUSTOM_TOOLCHAIN=arm-eabi-4.8

# Assert
TARGET_OTA_ASSERT_DEVICE 			:= baffinlite,i9060,gt-i9060,GT-I9060,gt-i9060l,GT-I9060L,

# Kernel
TARGET_KERNEL_CONFIG 				:= cyanogenmod_baffinlite_defconfig
TARGET_KERNEL_SOURCE 				:= kernel/samsung/baffinlite
BOARD_HAS_NO_SELECT_BUTTON 			:= true
BOARD_HAS_LARGE_FILESYSTEM 			:= true

# Recovery
TARGET_RECOVERY_FSTAB 				:= device/samsung/baffinlite/recovery.fstab
TARGET_USE_CUSTOM_LUN_FILE_PATH 	:= "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"

#Recovery PhilZ
RECOVERY_VARIANT 					:= philz
TARGET_COMMON_NAME 					:= Galaxy Grand Neo
BOOTLOADER_CMD_ARG 					:= "download"
# KERNEL_EXFAT_MODULE_NAME := "exfat"
TARGET_SCREEN_HEIGHT 				:= 800
TARGET_SCREEN_WIDTH 				:= 480
BOARD_HAS_LOW_RESOLUTION 			:= true
BRIGHTNESS_SYS_FILE 				:= "/sys/class/backlight/panel/brightness"
BOARD_USE_B_SLOT_PROTOCOL 			:= true

BOARD_SDEXT_DEVICE 					:= /dev/block/mmcblk1p2

#fix fr the graphic glitch 
# TARGET_RECOVERY_PIXEL_FORMAT 		:= "BGRA_8888"
TARGET_RECOVERY_PIXEL_FORMAT 		:= "RGBX_8888"
BOARD_HAS_FLIPPED_SCREEN 			:= true

# Bluetooth
BOARD_HAVE_BLUETOOTH 				:= true
BOARD_HAVE_BLUETOOTH_BCM 			:= true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/baffinlite/bluetooth
BOARD_BLUEDROID_VENDOR_CONF 		:= device/samsung/baffinlite/libbt_vndcfg.txt

# Connectivity - Wi-Fi
BOARD_WPA_SUPPLICANT_DRIVER 		:= NL80211
WPA_SUPPLICANT_VERSION      		:= VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB 	:= lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        		:= NL80211
BOARD_HOSTAPD_PRIVATE_LIB   		:= lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           		:= bcmdhd
BOARD_WLAN_DEVICE_REV       		:= bcm4334
WIFI_DRIVER_FW_PATH_PARAM   		:= "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     		:= "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP      		:= "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_MODULE_PATH     		:= "/system/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_NAME     		:= "dhd"
WIFI_DRIVER_MODULE_ARG     		 	:= "firmware_path=/system/etc/wifi/bcmdhd_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_MODULE_AP_ARG  		 	:= "firmware_path=/system/etc/wifi/bcmdhd_apsta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_BAND                  		 	:= 802_11_ABG

# Wi-Fi Tethering
BOARD_HAVE_SAMSUNG_WIFI 			:= true

# SkTextBox for libtvout
BOARD_USES_SKTEXTBOX 				:= true

# Resolution
TARGET_SCREEN_HEIGHT 				:= 800
TARGET_SCREEN_WIDTH 				:= 480

# Bootanimation
# TARGET_BOOTANIMATION_PRELOAD 		:= true
# TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND 		:= true
BOARD_CHARGING_MODE_BOOTING_LPM 	:= /sys/class/power_supply/battery/batt_lp_charging

# CMHW
BOARD_HARDWARE_CLASS := hardware/samsung/cmhw/ device/samsung/baffinlite/cmhw/

# healthd
BOARD_HAL_STATIC_LIBRARIES 			:= libhealthd.java

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS 		:= device/samsung/baffinlite/releasetool

# RIL
BOARD_RIL_CLASS 					:= ../../../device/samsung/baffinlite/ril/

# Hardware rendering / GPU Stuff
# USE_OPENGL_RENDERER 				:= true
# EGL CONFIG is not longer need in KK ?
# BOARD_EGL_CFG 					:= hardware/broadcom/brcm_usrlib/dag/vmcsx/egl.cfg
# BOARD_EGL_CFG 						:= device/samsung/baffinlite/egl.cfg
BOARD_USE_MHEAP_SCREENSHOT 			:= true
BOARD_EGL_WORKAROUND_BUG_10194508 	:= true
# TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
COMMON_GLOBAL_CFLAGS 				+= -DNEEDS_VECTORIMPL_SYMBOLS -DJAVA_HWC
HWUI_COMPILE_FOR_PERF 				:= true
TARGET_DOESNT_USE_FENCE_SYNC 		:= true
COMMON_GLOBAL_CFLAGS 				+= -DEGL_NEEDS_FNW
TARGET_USES_ION 					:= true

# BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB 	:= true

#libasound_module_pcm_bcmfilter
OPENSOURCE_ALSA_AUDIO 				:= true
BOARD_USES_ALSA_AUDIO 				:= true
BRCM_ALSA_LIB_DIR=device/samsung/bcm_common/alsa-lib

# BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB 	:= true

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/baffinlite/sepolicy

BOARD_SEPOLICY_UNION += \
	file_contexts
