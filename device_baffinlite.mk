$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product-if-exists, vendor/samsung/baffinlite/baffinlite-vendor.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# Use high-density artwork where available
PRODUCT_LOCALES += hdpi

DEVICE_PACKAGE_OVERLAYS += device/samsung/baffinlite/overlay

# Init files
PRODUCT_COPY_FILES += \
	device/samsung/baffinlite/rootdir/fstab.java_ss_baffinlite:root/fstab.java_ss_baffinlite \
	device/samsung/baffinlite/rootdir/init.java_ss_baffinlite.rc:root/init.java_ss_baffinlite.rc \
	device/samsung/baffinlite/rootdir/init.bcm23550.usb.rc:root/init.bcm23550.usb.rc \
	device/samsung/baffinlite/rootdir/init.log.rc:root/init.log.rc \
	device/samsung/baffinlite/rootdir/lpm.rc:root/lpm.rc \
	device/samsung/baffinlite/rootdir/ueventd.java_ss_baffinlite.rc:root/ueventd.java_ss_baffinlite.rc \
	device/samsung/baffinlite/recovery/etc/extra.fstab:recovery/root/etc/extra.fstab \
	device/samsung/baffinlite/recovery/ueventd.java_ss_baffinlite.rc:recovery/root/ueventd.java_ss_baffinlite.rc \

# Configs
PRODUCT_COPY_FILES += \
	device/samsung/baffinlite/configs/audio_policy.conf:system/etc/audio_policy.conf \
	device/samsung/baffinlite/configs/default_gain.conf:system/etc/default_gain.conf \
	device/samsung/baffinlite/configs/media_codecs.xml:system/etc/media_codecs.xml \
	device/samsung/baffinlite/configs/media_profiles.xml:system/etc/media_profiles.xml \
	device/samsung/baffinlite/configs/tinyucm.conf:system/etc/tinyucm.conf \
	frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
	frameworks/av/media/libstagefright/data/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml \

# Prebuilt kl keylayout
PRODUCT_COPY_FILES += \
	device/samsung/baffinlite/keylayouts/bcm_headset.kl:system/usr/keylayout/bcm_headset.kl \
	device/samsung/baffinlite/keylayouts/bcm_keypad_v2.kl:system/usr/keylayout/bcm_keypad_v2.kl \
	device/samsung/baffinlite/keylayouts/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
	device/samsung/baffinlite/keylayouts/samsung-keypad.kl:system/usr/keylayout/samsung-keypad.kl \

# Filesystem management tools
PRODUCT_PACKAGES += \
	e2fsck \
	f2fstat \
	fsck.f2fs \
	fibmap.f2fs \
	mkfs.f2fs \
	setup_fs \

# Audio
PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio.usb.default \
	audio.r_submix.default \
	audio.primary.default \

USE_CUSTOM_AUDIO_POLICY := 1

# Charger
PRODUCT_PACKAGES += \
	charger \
	charger_res_images \

# Device-specific packages
PRODUCT_PACKAGES += \
	libsecril-client \
	libsecril-client-sap \
	SamsungServiceMode \
	Torch \

# Gapps
include device/samsung/baffinlite/gapps.mk

# KSM
PRODUCT_PROPERTY_OVERRIDES += \
	ro.ksm.default=1

# Usb accessory
PRODUCT_PACKAGES += \
	com.android.future.usb.accessory

# Wi-Fi
PRODUCT_PACKAGES += \
	dhcpcd.conf \
	hostapd \
	wpa_supplicant \
	wpa_supplicant.conf

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

ADDITIONAL_DEFAULT_PROPERTIES += \
	persist.service.adb.enable=1 \

# Support for Browser's saved page feature. This allows
# for pages saved on previous versions of the OS to be
# viewed on the current OS.
PRODUCT_PACKAGES += \
    libskia_legacy

# These are the hardware-specific settings that are stored in system properties.
# Note that the only such settings should be the ones that are too low-level to
# be reachable from resources or other mechanisms.
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=190 \
	wifi.interface=wlan0 \
	mobiledata.interfaces=rmnet0 \
	ro.telephony.ril_class=SamsungBCMRIL \
	ro.zygote.disable_gl_preload=true \
	ro.cm.hardware.cabc=/sys/class/mdnie/mdnie/cabc \
	persist.radio.multisim.config=none \
	persist.sys.root_access=3 \

# enable Google-specific location features,
# like NetworkLocationProvider and LocationCollector
PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.google.locationfeatures=1 \
	ro.com.google.networklocation=1

# Extended JNI checks
# The extended JNI checks will cause the system to run more slowly, but they can spot a variety of nasty bugs 
# before they have a chance to cause problems.
# Default=true for development builds, set by android buildsystem.
PRODUCT_PROPERTY_OVERRIDES += \
	ro.kernel.android.checkjni=0 \
	dalvik.vm.checkjni=false

# MTP
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mtp

# Override phone-hdpi-512-dalvik-heap to match value on stock
# - helps pass CTS com.squareup.okhttp.internal.spdy.Spdy3Test#tooLargeDataFrame)
# (property override must come before included property)
PRODUCT_PROPERTY_OVERRIDES += \
	dalvik.vm.heapgrowthlimit=56m \

# Dalvik heap config
include frameworks/native/build/phone-hdpi-512-dalvik-heap.mk

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

$(call inherit-product, hardware/broadcom/wlan/bcmdhd/config/config-bcm.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_baffinlite
PRODUCT_DEVICE := baffinlite
