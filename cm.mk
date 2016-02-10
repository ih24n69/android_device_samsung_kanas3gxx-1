## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)
$(call inherit-product, vendor/samsung/kanas3gxx/kanas3gxx-vendor.mk)

# Release name
PRODUCT_RELEASE_NAME := SandroidTeam

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/kanas3gxx/device_kanas3gxx.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := kanas3gxx
PRODUCT_NAME := cm_kanas3gxx
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-G355H

# Custom unofficial build tag
TARGET_UNOFFICIAL_BUILD_ID := SandroidTeam

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=kanas3gxx TARGET_DEVICE=kanas3g BUILD_FINGERPRINT=samsung/kanas3gxx/kanas3g:4.4.2/KOT49H/G355HXXU0AOF2:user/release-keys PRIVATE_BUILD_DESC="kanas3g:4.4.2/KOT49H/G355HXXU0AOF2:user/release-keys"
