#
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product-if-exists, vendor/huawei/rio/rio-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Media configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/prebuilts/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/prebuilts/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

PRODUCT_PACKAGES += \
    media_codecs_ffmpeg.xml

# Audio configuration file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/aanc_tuning_mixer.txt:system/etc/aanc_tuning_mixer.txt \
    $(LOCAL_PATH)/prebuilts/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/prebuilts/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/prebuilts/mixer_paths_skuk.xml:system/etc/mixer_paths_skuk.xml

# Thermal engine
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/thermal-engine.conf:system/etc/thermal-engine.conf

# Permissions
PRODUCT_COPY_FILES += \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.software.app_widgets.xml:system/etc/permissions/android.software.app_widgets.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    audio.primary.msm8916 \
    tinymix \
    libqcomvisualizer \
    libqcompostprocbundle \
    libqcomvoiceprocessing

# ANT+ stack
PRODUCT_PACKAGES += \
    AntHalService \
    libantradio \
    antradio_app \
    com.dsi.ant.antradio_library

# Bluetooth
PRODUCT_PACKAGES += \
    init.qcom.bt.sh

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Camera & Compatibility 
PRODUCT_PACKAGES += \
    libshim_cutils

PRODUCT_PACKAGES += \
    Snap

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1

# Connectivity Engine support
PRODUCT_PACKAGES += \
    libcnefeatureconfig \
    libxml2

# Curl
PRODUCT_PACKAGES += \
    libcurl \
    curl

# dataservices
PRODUCT_PACKAGES += \
    librmnetctl \
    rmnetcli

# Display
PRODUCT_PACKAGES += \
    copybit.msm8916 \
    gralloc.msm8916 \
    hwcomposer.msm8916 \
    libtinyxml \
    memtrack.msm8916

PRODUCT_PACKAGES += \
    pp_calib_data_BOE_OTM1901A_5P5_1080PXA_VIDEO.xml \
    pp_calib_data_CMI_NT35532_5P5_1080PXA_VIDEO.xml \
    pp_calib_data_TIANMA_NT35596_5P5_1080PXA_VIDEO.xml

# FM
PRODUCT_PACKAGES += \
    FMRadio \
    libfmjni

# Gello
PRODUCT_PACKAGES += \
    Gello

# KEYPAD
PRODUCT_PACKAGES += \
    fingerprint.kl \
    ft5x06_ts.kl \
    gpio-keys.kl \
    synaptics_dsx.kl \
    synaptics_rmi4_i2c.kl \
    usbaudio.kl

# IPv6
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# GPS
PRODUCT_PACKAGES += \
    gps.msm8916

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/flp.conf:system/etc/flp.conf \
    $(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/gps/izat.conf:system/etc/izat.conf \
    $(LOCAL_PATH)/gps/quipc.conf:system/etc/quipc.conf \
    $(LOCAL_PATH)/gps/sap.conf:system/etc/sap.conf

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/sec_config:system/etc/sec_config

# OMX
PRODUCT_PACKAGES += \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

# Power HAL
PRODUCT_PACKAGES += \
    power.msm8916 \
    libqti-iop-client

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.class_main.sh \
    init.qcom.power.rc \
    init.qcom.power.sh \
    init.qcom.rc \
    init.qcom.ssr.rc \
    init.qcom.usb.rc \
    init.qcom.usb.sh \
    ueventd.qcom.rc

# Fingerprint sensor
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/fingerprint.idc:system/usr/idc/fingerprint.idc

# NFC
PRODUCT_PACKAGES += \
    libnfc-nci \
    libnfc_nci_jni \
    nfc_nci.pn54x.default \
    com.android.nfc_extras \
    NfcNci \
    Tag

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/prebuilts/libnfc-brcm_rio.conf:system/etc/libnfc-brcm_rio.conf \
    $(LOCAL_PATH)/prebuilts/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
    $(LOCAL_PATH)/prebuilts/libnfc-nxp_rio.conf:system/etc/libnfc-nxp_rio.conf \
    $(LOCAL_PATH)/prebuilts/nfcee_access.xml:system/etc/nfcee_access.xml

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    packages/apps/Nfc/migrate_nfc.txt:system/etc/updatecmds/migrate_nfc.txt

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Wifi
PRODUCT_PACKAGES += \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf \
    wcnss_service

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/wifi/hostapd.conf:system/etc/hostapd/hostapd_default.conf \
    $(LOCAL_PATH)/wifi/hostapd.deny:system/etc/hostapd/hostapd.deny \
    $(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/lowi.conf:system/etc/lowi.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/wifi/WCNSS_wlan_dictionary.dat:system/etc/wifi/WCNSS_wlan_dictionary.dat \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)
