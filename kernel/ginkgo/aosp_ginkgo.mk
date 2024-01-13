# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common aosp stuff
$(call inherit-product, vendor/xiaomi/ginkgo/BoardConfigVendor.mk)

# Inherit from ginkgo device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := ginkgo
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := aosp_ginkgo
PRODUCT_MODEL := Redmi Note 8

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := ginkgo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ginkgo-user 11 RKQ1.201004.002 V12.5.1.0.RCOMIXM release-keys "

BUILD_FINGERPRINT := xiaomi/ginkgo/ginkgo:11/RKQ1.201004.002/V12.5.1.0.RCOMIXM:user/release-keys
