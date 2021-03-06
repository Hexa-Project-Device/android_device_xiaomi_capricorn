$(call inherit-product, device/xiaomi/capricorn/full_capricorn.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/hexa/config/common_full_phone.mk)

PRODUCT_NAME := hexa_capricorn
PRODUCT_DEVICE := capricorn
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 5s
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="capricorn" \
    PRODUCT_NAME="capricorn" \
    BUILD_FINGERPRINT="Xiaomi/capricorn/capricorn:6.0.1/MXB48T/V8.2.4.0.MAGCNDL:user/release-keys" \
    PRIVATE_BUILD_DESC="capricorn-user 6.0.1 MXB48T V8.2.4.0.MAGCNDL release-keys"

# OTA Updater for Capricorn
PRODUCT_PROPERTY_OVERRIDES += \
  ro.ota.romname=Hexa-Project-Capricorn \
  ro.ota.version=$(shell date -u +%Y%m%d) \
  ro.ota.manifest=https://raw.githubusercontent.com/Hexa-Project/release_capri/master/ota.xml

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
