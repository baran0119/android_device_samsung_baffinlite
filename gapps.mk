GAPPS_ROOT := vendor/google/gapps

PRODUCT_COPY_FILES += \
	$(GAPPS_ROOT)/app/GoogleContactsSyncAdapter/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter/GoogleContactsSyncAdapter.apk \
	$(GAPPS_ROOT)/app/Street/Street.apk:system/app/Street/Street.apk \
	$(GAPPS_ROOT)/app/Maps/lib/arm/libgmm-jni.so:system/app/Maps/lib/arm/libgmm-jni.so \
	$(GAPPS_ROOT)/app/Maps/lib/arm/libcrashreporter.so:system/app/Maps/lib/arm/libcrashreporter.so \
	$(GAPPS_ROOT)/app/Maps/Maps.apk:system/app/Maps/Maps.apk \
	$(GAPPS_ROOT)/app/GoogleCalendarSyncAdapter/GoogleCalendarSyncAdapter.apk:system/app/GoogleCalendarSyncAdapter/GoogleCalendarSyncAdapter.apk \
	$(GAPPS_ROOT)/app/GoogleTTS/lib/arm/libpatts_engine_jni_api.so:system/app/GoogleTTS/lib/arm/libpatts_engine_jni_api.so \
	$(GAPPS_ROOT)/app/GoogleTTS/lib/arm/libspeexwrapper.so:system/app/GoogleTTS/lib/arm/libspeexwrapper.so \
	$(GAPPS_ROOT)/app/GoogleTTS/GoogleTTS.apk:system/app/GoogleTTS/GoogleTTS.apk \
	$(GAPPS_ROOT)/app/Gmail2/Gmail2.apk:system/app/Gmail2/Gmail2.apk \
	$(GAPPS_ROOT)/app/YouTube/lib/arm/libcronet.so:system/app/YouTube/lib/arm/libcronet.so \
	$(GAPPS_ROOT)/app/YouTube/lib/arm/libm2ts_player.so:system/app/YouTube/lib/arm/libm2ts_player.so \
	$(GAPPS_ROOT)/app/YouTube/YouTube.apk:system/app/YouTube/YouTube.apk \
	$(GAPPS_ROOT)/app/ConfigUpdater/ConfigUpdater.apk:system/app/ConfigUpdater/ConfigUpdater.apk \
	$(GAPPS_ROOT)/etc/g.prop:system/etc/g.prop \
	$(GAPPS_ROOT)/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
	$(GAPPS_ROOT)/etc/permissions/features.xml:system/etc/permissions/features.xml \
	$(GAPPS_ROOT)/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
	$(GAPPS_ROOT)/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
	$(GAPPS_ROOT)/framework/com.google.widevine.software.drm.jar:system/framework/com.google.widevine.software.drm.jar \
	$(GAPPS_ROOT)/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
	$(GAPPS_ROOT)/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
	$(GAPPS_ROOT)/priv-app/GoogleFeedback/GoogleFeedback.apk:system/priv-app/GoogleFeedback/GoogleFeedback.apk \
	$(GAPPS_ROOT)/priv-app/GoogleServicesFramework/GoogleServicesFramework.apk:system/priv-app/GoogleServicesFramework/GoogleServicesFramework.apk \
	$(GAPPS_ROOT)/priv-app/Phonesky/Phonesky.apk:system/priv-app/Phonesky/Phonesky.apk \
	$(GAPPS_ROOT)/priv-app/GoogleLoginService/GoogleLoginService.apk:system/priv-app/GoogleLoginService/GoogleLoginService.apk \
	$(GAPPS_ROOT)/priv-app/SetupWizard/SetupWizard.apk:system/priv-app/SetupWizard/SetupWizard.apk \
	$(GAPPS_ROOT)/priv-app/Velvet/Velvet.apk:system/priv-app/Velvet/Velvet.apk \
	$(GAPPS_ROOT)/priv-app/Velvet/lib/arm/libvcdecoder_jni.so:system/priv-app/Velvet/lib/arm/libvcdecoder_jni.so \
	$(GAPPS_ROOT)/priv-app/Velvet/lib/arm/libgoogle_hotword_jni.so:system/priv-app/Velvet/lib/arm/libgoogle_hotword_jni.so \
	$(GAPPS_ROOT)/priv-app/Velvet/lib/arm/libgoogle_recognizer_jni_l.so:system/priv-app/Velvet/lib/arm/libgoogle_recognizer_jni_l.so \
	$(GAPPS_ROOT)/priv-app/GoogleOneTimeInitializer/GoogleOneTimeInitializer.apk:system/priv-app/GoogleOneTimeInitializer/GoogleOneTimeInitializer.apk \
	$(GAPPS_ROOT)/priv-app/GooglePartnerSetup/GooglePartnerSetup.apk:system/priv-app/GooglePartnerSetup/GooglePartnerSetup.apk \
	$(GAPPS_ROOT)/priv-app/GoogleBackupTransport/GoogleBackupTransport.apk:system/priv-app/GoogleBackupTransport/GoogleBackupTransport.apk \
	$(GAPPS_ROOT)/priv-app/GmsCore/lib/arm/libjgcastservice.so:system/priv-app/GmsCore/lib/arm/libjgcastservice.so \
	$(GAPPS_ROOT)/priv-app/GmsCore/lib/arm/libgmscore.so:system/priv-app/GmsCore/lib/arm/libgmscore.so \
	$(GAPPS_ROOT)/priv-app/GmsCore/lib/arm/libgcastv2_support.so:system/priv-app/GmsCore/lib/arm/libgcastv2_support.so \
	$(GAPPS_ROOT)/priv-app/GmsCore/lib/arm/libgcastv2_base.so:system/priv-app/GmsCore/lib/arm/libgcastv2_base.so \
	$(GAPPS_ROOT)/priv-app/GmsCore/lib/arm/libWhisper.so:system/priv-app/GmsCore/lib/arm/libWhisper.so \
	$(GAPPS_ROOT)/priv-app/GmsCore/lib/arm/libgames_rtmp_jni.so:system/priv-app/GmsCore/lib/arm/libgames_rtmp_jni.so \
	$(GAPPS_ROOT)/priv-app/GmsCore/lib/arm/libAppDataSearch.so:system/priv-app/GmsCore/lib/arm/libAppDataSearch.so \
	$(GAPPS_ROOT)/priv-app/GmsCore/lib/arm/libconscrypt_gmscore_jni.so:system/priv-app/GmsCore/lib/arm/libconscrypt_gmscore_jni.so \
	$(GAPPS_ROOT)/priv-app/GmsCore/lib/arm/libgms-ocrclient.so:system/priv-app/GmsCore/lib/arm/libgms-ocrclient.so \
	$(GAPPS_ROOT)/priv-app/GmsCore/GmsCore.apk:system/priv-app/GmsCore/GmsCore.apk \

