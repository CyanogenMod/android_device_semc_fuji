USE_CAMERA_STUB := false

# inherit from the proprietary version
-include vendor/semc/fuji/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/semc/fuji/include

TARGET_BOOTLOADER_BOARD_NAME := fuji
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true

# Audio
BOARD_USES_GENERIC_AUDIO := false
BOARD_PREBUILT_LIBAUDIO := false

#Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

#TARGET_HAVE_HDMI_OUT := true
#TARGET_USES_OVERLAY := true

# Wifi related defines
#BOARD_WPA_SUPPLICANT_DRIVER      := WEXT
#WPA_SUPPLICANT_VERSION           := VER_0_8_X
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
#BOARD_WLAN_DEVICE                := bcm4330
#WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcm4330/parameters/firmware_path"
##WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/bcm4330.ko"
#WIFI_DRIVER_FW_PATH_STA          := "/etc/firmware/fw_bcm4330.bin"
#WIFI_DRIVER_FW_PATH_AP           := "/etc/firmware/fw_bcm4330_apsta.bin"
#WIFI_DRIVER_MODULE_NAME          := "bcm4330"
#WIFI_DRIVER_MODULE_ARG           := "firmware_path=/etc/firmware/fw_bcm4330.bin nvram_path=/proc/calibration iface_name=wlan"
#BOARD_WLAN_DEVICE_REV            := bcm4330
#WIFI_BAND                        := 802_11_ABG

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_6_X
BOARD_WLAN_DEVICE           := bcm4329
WIFI_DRIVER_MODULE_NAME     := bcm4329

# Define egl.cfg location
BOARD_EGL_CFG := device/semc/fuji/prebuilt/egl.cfg

BOARD_USES_AUDIO_LEGACY := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_USE_QCOM_PMEM := true
USE_OPENGL_RENDERER := true
TARGET_HAVE_BYPASS := true

#BOARD_HAVE_FM_RADIO := true
#BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

BOARD_KERNEL_CMDLINE := no_console_suspend=1
#BOARD_KERNEL_BASE := 0x48000000
BOARD_PAGE_SIZE := 2048

#BOARD_VENDOR_QCOM_AMSS_VERSION := 50000
#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := semc
#BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

#TARGET_USES_C2D_COMPOSITION := true
#TARGET_HAVE_HDMI_OUT := true
#TARGET_HARDWARE_3D := true

# Define Prebuilt kernel locations
TARGET_PREBUILT_KERNEL := device/semc/fuji/kernel

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776192
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 838860800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 20044333056
BOARD_FLASH_BLOCK_SIZE := 131072

#BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
#BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
#BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
#BOARD_USES_MMCUTILS := true

BOARD_CUSTOM_BOOTIMG_MK := device/semc/fuji/custombootimg.mk
TARGET_RECOVERY_PRE_COMMAND := "touch /cache/recovery/boot;sync;"
BOARD_HAS_SMALL_RECOVERY := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_USES_RECOVERY_CHARGEMODE := false
BOARD_CUSTOM_GRAPHICS := ../../../device/semc/fuji/recovery/graphics.c
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/semc/fuji/recovery/recovery_keys.c

BOARD_KERNEL_CMDLINE := console=null
BOARD_KERNEL_BASE := 0x40200000
BOARD_RECOVERY_BASE := 0x40200000

BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p1
# A custom ota package maker for a device without an exposed boot partition
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/semc/msm7x30-common/releasetools/semc_ota_from_target_files

#TARGET_RECOVERY_INITRC := device/semc/fuji/recovery/init.rc
#TARGET_PREBUILT_RECOVERY_KERNEL := device/semc/fuji/recovery_kernel

#BOARD_NEEDS_CUTILS_LOG := true
