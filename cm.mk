## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := GalaxyGrandNeo

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/baffinlite/device_baffinlite.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := baffinlite
PRODUCT_NAME := cm_baffinlite
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-I9060

#Set build fingerprint / ID / Prduct Name ect.
#PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=baffinlitexx TARGET_DEVICE=baffinlite BUILD_FINGERPRINT=samsung/baffinlitexx/baffinlite:4.2.2/JDQ39/I9060XXUANB1:user/release-keys PRIVATE_BUILD_DESC="baffinlitexx-user 4.2.2 JDQ39 I9060XXUANB1 release-keys"
