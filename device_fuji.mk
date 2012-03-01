$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# proprietary side of the device
$(call inherit-product-if-exists, vendor/semc/fuji/fuji-vendor.mk)

$(call inherit-product, frameworks/base/build/phone-hdpi-512-dalvik-heap.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := fuji
PRODUCT_DEVICE := fuji
PRODUCT_MODEL := fuji

# semc fuji uses high-density artwork where available
PRODUCT_LOCALES += hdpi

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
PRODUCT_COPY_FILES += \
    $(TARGET_PREBUILT_KERNEL):kernel

# These is the hardware-specific overlay, which points to the location
# of hardware-specific resource overrides, typically the frameworks and
# application settings that are stored in resourced.
DEVICE_PACKAGE_OVERLAYS += device/semc/fuji/overlay

# These are the hardware-specific configuration files
PRODUCT_COPY_FILES += \
    device/semc/fuji/prebuilt/media_profiles.xml:system/etc/media_profiles.xml

# Init files
PRODUCT_COPY_FILES += \
    device/semc/fuji/prebuilt/filler:root/sbin/filler \
    device/semc/fuji/prebuilt/init.semc.usb.rc:root/init.semc.usb.rc \
    device/semc/fuji/prebuilt/pre_hw_config.sh:root/pre_hw_config.sh \
    device/semc/fuji/prebuilt/hw_config.sh:system/etc/hw_config.sh \
    device/semc/fuji/prebuilt/logo_X.rle:root/logo.rle \
    device/semc/fuji/prebuilt/bootrec:root/sbin/bootrec \
    device/semc/fuji/recovery.fstab:root/recovery.fstab \
    device/semc/fuji/prebuilt/ueventd.semc.rc:root/ueventd.semc.rc \
    device/semc/fuji/prebuilt/gps.conf:system/etc/gps.conf \
    device/semc/fuji/prebuilt/fstab:root/fstab


PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

#Offline charging animation
PRODUCT_COPY_FILES += \
    device/semc/fuji/prebuilt/animations/charging_animation_01_X.png:system/semc/chargemon/data/charging_animation_01.png \
    device/semc/fuji/prebuilt/animations/charging_animation_02_X.png:system/semc/chargemon/data/charging_animation_02.png \
    device/semc/fuji/prebuilt/animations/charging_animation_03_X.png:system/semc/chargemon/data/charging_animation_03.png \
    device/semc/fuji/prebuilt/animations/charging_animation_04_X.png:system/semc/chargemon/data/charging_animation_04.png \
    device/semc/fuji/prebuilt/animations/charging_animation_05_X.png:system/semc/chargemon/data/charging_animation_05.png \
    device/semc/fuji/prebuilt/animations/charging_animation_06_X.png:system/semc/chargemon/data/charging_animation_06.png \
    device/semc/fuji/prebuilt/animations/charging_animation_07_X.png:system/semc/chargemon/data/charging_animation_07.png

#recovery resources
PRODUCT_COPY_FILES += \
    bootable/recovery/res/images/icon_firmware_error.png:root/res/images/icon_firmware_error.png \
    bootable/recovery/res/images/icon_firmware_install.png:root/res/images/icon_firmware_install.png \
    bootable/recovery/res/images/icon_clockwork.png:root/res/images/icon_clockwork.png \
    bootable/recovery/res/images/icon_error.png:root/res/images/icon_error.png \
    bootable/recovery/res/images/icon_installing.png:root/res/images/icon_installing.png \
    bootable/recovery/res/images/icon_installing_overlay01.png:root/res/images/icon_installing_overlay01.png \
    bootable/recovery/res/images/icon_installing_overlay02.png:root/res/images/icon_installing_overlay02.png \
    bootable/recovery/res/images/icon_installing_overlay03.png:root/res/images/icon_installing_overlay03.png \
    bootable/recovery/res/images/icon_installing_overlay04.png:root/res/images/icon_installing_overlay04.png \
    bootable/recovery/res/images/icon_installing_overlay05.png:root/res/images/icon_installing_overlay05.png \
    bootable/recovery/res/images/icon_installing_overlay06.png:root/res/images/icon_installing_overlay06.png \
    bootable/recovery/res/images/icon_installing_overlay07.png:root/res/images/icon_installing_overlay07.png \
    bootable/recovery/res/images/indeterminate01.png:root/res/images/indeterminate01.png \
    bootable/recovery/res/images/indeterminate02.png:root/res/images/indeterminate02.png \
    bootable/recovery/res/images/indeterminate03.png:root/res/images/indeterminate03.png \
    bootable/recovery/res/images/indeterminate04.png:root/res/images/indeterminate04.png \
    bootable/recovery/res/images/indeterminate05.png:root/res/images/indeterminate05.png \
    bootable/recovery/res/images/indeterminate06.png:root/res/images/indeterminate06.png \
    bootable/recovery/res/images/progress_empty.png:root/res/images/progress_empty.png \
    bootable/recovery/res/images/progress_fill.png:root/res/images/progress_fill.png

PRODUCT_PACKAGES += \
    gralloc.msm8660 \
    copybit.msm8660 \
    hwcomposer.msm8660 \
    audio.primary.msm8660 \
    audio_policy.msm8660 \
    gps.semc \
    lights.fuji \
    sensors.semc \
    libgenlock \
    libQcomUI \
    libtilerenderer \
    libmemalloc \
    liboverlay \
    librs_jni \
    libOmxCore \
    libOmxVenc \
    libOmxVdec \
    Superuser \
    su \
    com.android.future.usb.accessory \
    libcyanogen-dsp\
    DSPManager \
    CMSettings \
    Gallery


PRODUCT_PROPERTY_OVERRIDES += \
    ro.tethering.kb_disconnect=1

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320 \
    ro.opengles.version=131072 \
    rild.libpath=/system/lib/libril-qc-1.so \
    rild.libargs=-d/dev/smd0 \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10 \
    ro.telephony.default_network=0 \
    ro.telephony.call_ring.multiple=false \
    wifi.supplicant_scan_interval=15 \
    keyguard.no_require_sim=true \
    ro.com.google.locationfeatures=1 \
    ro.product.locale.language=en \
    ro.product.locale.region=US \
    persist.ro.ril.sms_sync_sending=1 \
    ro.use_data_netmgrd=true \
    debug.sf.hw=1 \
    debug.composition.type=c2d \
    debug.qctwa.statusbar=1 \
    debug.qctwa.preservebuf=1 \
    com.qc.hardware=truecom.qc.hdmi_out=true \
    BUILD_UTC_DATE=0 \
    hwui.render_dirty_regions=false \
    hwui.disable_vsync=true \
    persist.sys.usb.config=mtp,adb

#    ro.telephony.ril_class=SemcRIL \
#    dalvik.vm.dexopt-data-only=1 \
#    dalvik.vm.dexopt-flags=m=y \
#    dalvik.vm.lockprof.threshold=500 \
#    dalvik.vm.execution-mode=int:jit \
#    dalvik.vm.checkjni=false \
#    dalvik.vm.heapsize=48m \
#    ro.compcache.default=0 \
#    hwui.render_dirty_regions=false \
#    ro.telephony.ril.v3=facilitylock,signalstrength,icccardstatus,datacall \
#    mobiledata.interfaces=rmnet0,rmnet1,rmnet2 \
