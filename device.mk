#
# Copyright (C) 2018-2022 ArrowOS
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/realme/RMX2185

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/developer_gsi_keys.mk)

# Call proprietary blob setup
$(call inherit-product, vendor/realme/RMX2185/RMX2185-vendor.mk)

# IMS
$(call inherit-product, vendor/realme/RMX2185-ims/RMX2185-ims.mk)

# RealmeDirac
$(call inherit-product, $(DEVICE_PATH)/app/RealmeDirac/dirac.mk)

# RealmeParts
$(call inherit-product, $(DEVICE_PATH)/app/RealmeParts/parts.mk)

# Platform
PRODUCT_SHIPPING_API_LEVEL := 29

# Dynamic Partition
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_BUILD_SUPER_PARTITION := false

# APN
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/apns-conf.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/apns-conf.xml

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@7.0.vendor \
    android.hardware.audio.service \
    android.hardware.audio@6.0-impl:32 \
    android.hardware.audio.effect@7.0-impl:32 \
    android.hardware.audio.common@7.0-util \
    android.hardware.audio@6.0-util \
    android.hardware.audio@7.1-impl \
    android.hardware.soundtrigger@2.3.vendor 

PRODUCT_PACKAGES += \
    audio.bluetooth.default \
    audio.r_submix.default \
    audio.usb.default \
    audio_policy.stub

PRODUCT_PACKAGES += \
    libaudiofoundation.vendor \
    libaudiopreprocessing \
    libbundlewrapper \
    libdownmix \
    libtinycompress \
    libalsautils \
    libnbaio_mono

PRODUCT_PACKAGES += \
    MtkInCallService

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(DEVICE_PATH)/configs/audio/,$(TARGET_COPY_OUT_VENDOR)/etc)

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/bluetooth_audio_policy_configuration_7_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_audio_policy_configuration_7_0.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth.a2dp@1.0 \
    android.hardware.bluetooth@1.0.vendor \
    android.hardware.bluetooth.audio-impl \
    android.hardware.bluetooth.a2dp@1.0.vendor

# Boot animation
TARGET_SCREEN_HEIGHT := 1600
TARGET_SCREEN_WIDTH := 720

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.device@3.5.vendor \
    android.hardware.camera.provider@2.4.vendor

PRODUCT_PACKAGES += \
    libshim_camera_metadata

PRODUCT_PACKAGES += \
    Aperture

PRODUCT_PACKAGES += \
    RemoveCameraPackages

# Configstore
PRODUCT_PACKAGES += \
    disable_configstore

# Display
PRODUCT_PACKAGES += \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \
    android.hardware.memtrack@1.0.vendor \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.common@1.2 \
    android.hardware.graphics.composer@2.1-service \
    android.hardware.graphics.mapper@2.0-impl-2.1 \

PRODUCT_PACKAGES += \
    libvulkan

# DRM
PRODUCT_PACKAGES += \
    libmockdrmcryptoplugin \

PRODUCT_PACKAGES += \
    android.hardware.drm@1.4.vendor \
    android.hardware.drm-service.clearkey

# DT2W
PRODUCT_PACKAGES += \
    DT2W-Service-RMX2185

# Fastbootd
PRODUCT_PACKAGES += \
    fastbootd

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service.RMX2185

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-service \
    android.hardware.gatekeeper@1.0.vendor \
    android.hardware.gatekeeper@1.0-impl

# GNSS
PRODUCT_PACKAGES += \
    android.hardware.gnss@2.0.vendor \

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.0 \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

PRODUCT_PACKAGES += \
    libsuspend

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.allocator@1.0 \
    android.hidl.memory@1.0-impl \
    android.hidl.memory.block@1.0 \
    libhidltransport \
    libhwbinder \

PRODUCT_PACKAGES += \
    android.hidl.allocator@1.0.vendor \
    libhwbinder.vendor \
    libhidltransport.vendor


# Keylayouts
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/idc/mtk-kpd.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/mtk-kpd.idc \
    $(DEVICE_PATH)/configs/keylayout/mtk-kpd.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/mtk-kpd.kl \
    $(DEVICE_PATH)/configs/keylayout/touchpanel.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/touchpanel.kl

# Keymaster
PRODUCT_PACKAGES += \
    libkeymaster4.vendor:64 \
    libkeymaster4support.vendor:64 \
    libkeymaster_portable.vendor:64 \
    libkeymaster_messages.vendor:64 \
    libsoft_attestation_cert.vendor:64 \
    libpuresoftkeymasterdevice.vendor:64

# Libxml2
PRODUCT_PACKAGES += \
    libxml2.vendor

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light-service.RMX2185

# LiveDisplay
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@2.0-service-RMX2185

# Media
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(DEVICE_PATH)/configs/media/,$(TARGET_COPY_OUT_VENDOR)/etc)

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml

PRODUCT_PACKAGES += \
    libnl \
    libavservices_minijail \
    libavservices_minijail_vendor \
    libavservices_minijail.vendor

# Neutral Networks
PRODUCT_PACKAGES += \
    android.hardware.neuralnetworks@1.3.vendor

# Permissions
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/permissions/privapp-permissions-mediatek.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-mediatek.xml

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.software.opengles.deqp.level-2020-03-01.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.opengles.deqp.level.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.ims.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.vulkan.compute-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.compute.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.software.vulkan.deqp.level-2020-03-01.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.vulkan.deqp.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.passpoint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.passpoint.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.ipsec_tunnels.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.ipsec_tunnels.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.verified_boot.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.verified_boot.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.3.vendor

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(DEVICE_PATH)/configs/power/,$(TARGET_COPY_OUT_VENDOR)/etc)

# PowerOffAlarm
PRODUCT_PACKAGES += PowerOffAlarm

# Properties
-include $(DEVICE_PATH)/configs/props/vendor_logging_prop.mk
PRODUCT_COMPATIBLE_PROPERTY_OVERRIDE := true

# Protobuf
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full-vendorcompat \
    libprotobuf-cpp-lite-vendorcompat

# Public Libraries
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt

# Radio
PRODUCT_PACKAGES += \
    android.hardware.broadcastradio@1.1.vendor \
    android.hardware.radio@1.4.vendor \
    android.hardware.radio.config@1.2.vendor \
    android.hardware.radio.deprecated@1.0.vendor

# RenderScript
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# Rootdir
PRODUCT_PACKAGES += \
    init.recovery.mt6765.rc \
    init.connectivity.rc \
    init.modem.rc \
    init.mt6765.rc \
    init.mt6765.usb.rc \
    init.project.rc \
    init.sensor_1_0.rc \
    fstab.mt6765 \
    fstab.mt6765.ramdisk \
    ueventd.mtk.rc

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay

# Runtime Resource Overlays 
PRODUCT_PACKAGES += \
    ApertureOverlayRMX2185 \
    CarrierConfigOverlayRMX2185 \
    FingerprintFrameworksResOverlayRMX2185 \
    FingerprintSystemUIOverlayRMX2185 \
    FrameworksResOverlayRMX2185 \
    SettingsOverlayRMX2185 \
    SettingsProviderOverlayRMX2185 \
    SystemUIOverlayRMX2185 \
    TelephonyOverlayRMX2185 \
    TetheringResOverlayRMX2185 \
    WifiResOverlayRMX2185

# Secure element
PRODUCT_PACKAGES += \
    android.hardware.secure_element@1.0.vendor

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@2.0.vendor

PRODUCT_PACKAGES += \
    libsensorndkbridge

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

# Symbols
PRODUCT_PACKAGES += \
    libshim_showlogo \
    libshim_vtservice

# Text classifier
PRODUCT_PACKAGES += \
    libtextclassifier_hash.vendor

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.1.vendor

# Vibrator
TARGET_VIBRATOR_SUPPORTS_EFFECTS := true
PRODUCT_PACKAGES += \
    android.hardware.vibrator-service.mediatek

# VNDK
PRODUCT_COPY_FILES += \
    prebuilts/vndk/v32/arm64/arch-arm-armv8-a/shared/vndk-sp/android.hardware.common-V2-ndk_platform.so:$(TARGET_COPY_OUT_VENDOR)/lib/android.hardware.common-V2-ndk_platform.so \
    prebuilts/vndk/v32/arm64/arch-arm-armv8-a/shared/vndk-sp/android.hardware.graphics.common-V2-ndk_platform.so:$(TARGET_COPY_OUT_VENDOR)/lib/android.hardware.graphics.common-V2-ndk_platform.so \
    prebuilts/vndk/v32/arm64/arch-arm-armv8-a/shared/vndk-core/libui.so:$(TARGET_COPY_OUT_VENDOR)/lib/libui-v32.so \
    prebuilts/vndk/v29/arm64/arch-arm-armv8-a/shared/vndk-sp/libutils.so:$(TARGET_COPY_OUT_VENDOR)/lib/libutils-v29.so \
    prebuilts/vndk/v29/arm64/arch-arm-armv8-a/shared/vndk-sp/libcompiler_rt.so:$(TARGET_COPY_OUT_VENDOR)/lib/libcompiler_rt.so \
    prebuilts/vndk/v30/arm64/arch-arm-armv8-a/shared/vndk-core/libmedia_helper.so:$(TARGET_COPY_OUT_VENDOR)/lib/libmedia_helper-v30.so \
    prebuilts/vndk/v30/arm64/arch-arm-armv8-a/shared/vndk-sp/libutils.so:$(TARGET_COPY_OUT_VENDOR)/lib/libutils-v30.so

PRODUCT_COPY_FILES += \
    prebuilts/vndk/v29/arm64/arch-arm64-armv8-a/shared/vndk-sp/libutils.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libutils-v29.so \
    prebuilts/vndk/v29/arm64/arch-arm64-armv8-a/shared/vndk-sp/libcompiler_rt.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcompiler_rt.so \
    prebuilts/vndk/v30/arm64/arch-arm64-armv8-a/shared/vndk-sp/libutils.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libutils-v30.so

# Wi-Fi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service

PRODUCT_PACKAGES += \
    android.hardware.wifi@1.3.vendor \
    android.hardware.wifi.supplicant@1.2.vendor \
    android.hardware.wifi.hostapd@1.1.vendor

PRODUCT_PACKAGES += \
    libkeystore-engine-wifi-hidl \
    libkeystore-wifi-hidl \

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/wifi/vendor_hals.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/vendor_hals/vendor_hals.xml

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(DEVICE_PATH)/configs/wifi/wpa_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant.conf \
    $(DEVICE_PATH)/configs/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf
