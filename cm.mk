# Inherit AOSP device configuration for passion.
$(call inherit-product, device/htc/passion/full_passion.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Include GSM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)

# Include BCM stuff
$(call inherit-product-if-exists, vendor/bcm/bcm.mk)

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

# Get some Gapps
$(call inherit-product-if-exists, gapps/gapps.mk)
