## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := Leagoo M8 pro

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/leagoo/M8_pro/full_M8_pro.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := M8_pro
PRODUCT_NAME := lineage_M8_pro
PRODUCT_BRAND := leagoo
PRODUCT_MODEL := M8_pro
PRODUCT_MANUFACTURER := leagoo
