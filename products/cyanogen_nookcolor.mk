# Inherit AOSP device configuration for passion.
$(call inherit-product, device/bn/nookcolor/device_nookcolor.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_nookcolor
PRODUCT_BRAND := bn
PRODUCT_DEVICE := nookcolor
PRODUCT_MODEL := NookColor
PRODUCT_MANUFACTURER := bn

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-nookcolor
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.0.0-RC0-nookcolor
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.0.0-RC0-nookcolor-KANG
    endif
endif

PRODUCT_BUILD_PROP_OVERRIDES := BUILD_ID=FRG83D BUILD_DISPLAY_ID=GRH78 PRODUCT_NAME=nookcolor TARGET_DEVICE=nookcolor BUILD_FINGERPRINT=bn/nookcolor/nookcolor/nookcolor:2.2.1/FRG83D/75603:user/release-keys PRODUCT_BRAND=bn PRIVATE_BUILD_DESC="nookcolor-user 2.3.1 FRG83D 75603 release-keys" BUILD_NUMBER=75603 BUILD_UTC_DATE=1289367602 TARGET_BUILD_VARIANT=eng TARGET_BUILD_TYPE=debug BUILD_VERSION_TAGS=release-keys USER=android-build

PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/nookcolor

PRODUCT_PACKAGES += SoftKeys