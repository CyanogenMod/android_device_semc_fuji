## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := LT26i

TARGET_BOOTANIMATION_NAME := vertical-720x1280

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/semc/fuji/device_fuji.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := fuji
PRODUCT_NAME := cm_fuji
PRODUCT_BRAND := SEMC
PRODUCT_MODEL := Xperia S

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=LT26i BUILD_FINGERPRINT="SEMC/LT18i_0000-0000/LT18i:4.0.3/4.1.C.0.7/-H9_3w:user/release-keys" PRIVATE_BUILD_DESC="LT18i-user 4.0.3 4.1.C.0.7 -H9_3w test-keys"
