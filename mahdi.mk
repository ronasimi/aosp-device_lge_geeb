# Release name
PRODUCT_RELEASE_NAME := Optimus G

# Inherit AOSP device configuration
$(call inherit-product, device/lge/geeb/full_geeb.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/mahdi/configs/common.mk)
$(call inherit-product, vendor/mahdi/configs/common_full_phone.mk)

# Setup device specific product configuration.
PRODUCT_DEVICE := geeb
PRODUCT_NAME := mahdi_geeb
PRODUCT_BRAND := LG
PRODUCT_MODEL := Optimus G
PRODUCT_MANUFACTURER := LGE

# Set build fingerprint / ID / Product Name ect.
#PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/mako:4.4.2/KOT49H/937116:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.4.2 KOT49H 937116 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/mahdi/prebuilt/bootanimations/BOOTANIMATION-1280x768.zip:system/media/bootanimation.zip
