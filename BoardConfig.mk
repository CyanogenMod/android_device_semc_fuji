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
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

#Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

#disabled new supplicant for now
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

#enabled old supplicant for now
# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_6_X
BOARD_WLAN_DEVICE           := bcm4329
WIFI_DRIVER_MODULE_NAME     := bcm4329

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_GPS := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BUILD_SEMC_SENSORS := true
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_SF_BYPASS := false
TARGET_HAVE_BYPASS := false
TARGET_USES_OVERLAY := true
TARGET_QCOM_HDMI_OUT := true
TARGET_GRALLOC_USES_ASHMEM := true
TARGET_USES_GENLOCK := true
TARGET_FORCE_CPU_UPLOAD := true
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE
BOARD_EGL_CFG := device/semc/fuji/prebuilt/egl.cfg

BOARD_VENDOR_QCOM_AMSS_VERSION := 50000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := semc
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

BOARD_KERNEL_CMDLINE := no_console_suspend=1
BOARD_KERNEL_BASE := 0x40200000
BOARD_RECOVERY_BASE := 0x40200000
BOARD_PAGE_SIZE := 2048

# Define Prebuilt kernel locations
TARGET_PREBUILT_KERNEL := device/semc/fuji/kernel

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776192
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 838860800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 20044333056
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_CUSTOM_BOOTIMG_MK := device/semc/fuji/custombootimg.mk
TARGET_RECOVERY_PRE_COMMAND := "touch /cache/recovery/boot;sync;"
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_USES_RECOVERY_CHARGEMODE := false
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
BOARD_CUSTOM_GRAPHICS := ../../../device/semc/fuji/recovery/graphics.c
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/semc/fuji/recovery/recovery_keys.c

BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/vold/179:15
# A custom ota package maker for a device without an exposed boot partition
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/semc/fuji/releasetools/semc_ota_from_target_files
