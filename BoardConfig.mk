#
# Copyright (C) 2015 The CyanogenMod Project
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

LOCAL_PATH := device/huawei/rio

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true
TARGET_BOARD_PLATFORM := msm8916

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Assert
TARGET_OTA_ASSERT_DEVICE := RIO-L01,hwRIO-L01,RIO-L02,hwRIO-L02,RIO-L03,hwRIO-L03,RIO-AL00,hwRIO-AL00,RIO-CL00,hwRIO-CL00,RIO-TL00,hwRIO-TL00

# Audio
USE_CUSTOM_AUDIO_POLICY := 1
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
AUDIO_FEATURE_LOW_LATENCY_PRIMARY := true
AUDIO_FEATURE_ENABLED_NEW_SAMPLE_RATE := false
BOARD_USES_ALSA_AUDIO := true
AUDIO_FEATURE_HUAWEI_SOUND_PARAM_PATH := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8916
TARGET_NO_BOOTLOADER := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Camera
TARGET_USE_COMPAT_GRALLOC_ALIGN := true
USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_HAS_LEGACY_CAMERA_HAL1 := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_DISABLE_INIT_BLANK := true
BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness

# CMHW
BOARD_HARDWARE_CLASS := \
    $(LOCAL_PATH)/cmhw \
    hardware/cyanogen/cmhw

# Crypto
TARGET_HW_DISK_ENCRYPTION := true

# Display
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
TARGET_CONTINUOUS_SPLASH_ENABLED := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true

# FM
BOARD_HAVE_QCOM_FM := true
TARGET_QCOM_NO_FM_FIRMWARE := true
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true

# GPS
TARGET_GPS_HAL_PATH := $(LOCAL_PATH)/gps
USE_DEVICE_SPECIFIC_GPS := true
TARGET_NO_RPC := true

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlyprintk androidboot.selinux=permissive
BOARD_DTBTOOL_ARGS := -2
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET     := 0x02000000
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_KERNEL_HEADER_ARCH := arm64
#TARGET_USES_UNCOMPRESSED_KERNEL := true
BOARD_KERNEL_IMAGE_NAME := Image

TARGET_KERNEL_SOURCE := kernel/huawei/msm8939
TARGET_KERNEL_CONFIG := cm_rio_defconfig

ENABLE_CPUSETS := true

# Keymaster
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# NFC
BOARD_NFC_CHIPSET := pn547
NXP_CHIP_TYPE := 1

# Partitions
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27128740864
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_PERSISTIMAGE_PARTITION_SIZE := 67108864

# Power
TARGET_POWERHAL_VARIANT := qcom
BOARD_POWER_CUSTOM_BOARD_LIB := libpower_rio
TARGET_POWER_SET_FEATURE_LIB := libpower_rio

# Properties
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# Qualcomm support
BOARD_USES_QC_TIME_SERVICES := true
BOARD_USES_QCOM_HARDWARE := true

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/fstab.qcom
TARGET_RECOVERY_DEVICE_MODULES := libinit_rio

# Release
TARGET_BOARD_INFO_FILE := $(LOCAL_PATH)/board-info.txt

# Release tools
TARGET_RECOVERY_UPDATER_LIBS := librecovery_updater_rio
TARGET_RELEASETOOLS_EXTENSIONS := $(LOCAL_PATH)/releasetools

# RIL
BOARD_RIL_CLASS := ../../../device/huawei/rio/ril
TARGET_RIL_VARIANT := caf

# SELinux
include device/qcom/sepolicy/sepolicy.mk

# Temp: disable device selinux
#Coresponding in kernel arg here
#
#BOARD_SEPOLICY_DIRS += \
#    device/huawei/rio/sepolicy

# Vendor Init
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_rio

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
TARGET_USES_WCNSS_CTRL := true
TARGET_USES_QCOM_WCNSS_QMI := true
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WPA_SUPPLICANT_VERSION := VER_0_8_X

# inherit from the proprietary version
-include vendor/huawei/rio/BoardConfigVendor.mk
