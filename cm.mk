# Inherit AOSP device configuration for bravo.
$(call inherit-product, device/htc/bravo/full_bravo.mk)

# Include BCM stuff
$(call inherit-product-if-exists, vendor/bcm/bcm-vendor_gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cm_passion
PRODUCT_BRAND := google
PRODUCT_DEVICE := passion
PRODUCT_CODENAME := passion
PRODUCT_MODEL := Nexus One
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=passion BUILD_ID=IML74K \
BUILD_FINGERPRINT=google/passion/passion:4.0.3/IML74K/189904:user/release-keys \
PRIVATE_BUILD_DESC="passion-user 4.0.3 IML74K 189904 release-keys"
