#PRODUCT_PACKAGE_OVERLAYS += vendor/extra/overlay

PRODUCT_PACKAGES += \
    auditd

GAPPS_PRODUCT_PACKAGES += DigitalWellbeing

GAPPS_EXCLUDED_PACKAGES := GooglePackageInstaller

#PRODUCT_PROPERTY_OVERRIDES += \
#    lineage.updater.uri=http://updater.theflamingskull.com/api

#$(call prepend-product-if-exists, vendor/tortel/product.mk)

ifeq ($(TARGET_ARCH),arm64)
  GAPPS_VARIANT := nano
#  $(call inherit-product, vendor/gapps/arm64/arm64-vendor.mk)
else
  GAPPS_VARIANT := pico
#  $(call inherit-product, vendor/gapps/arm/arm-vendor.mk)
endif

# Sounds
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sounds/Cloud.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/Cloud.ogg \
    $(LOCAL_PATH)/sounds/Pollux.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/Pollux.ogg \
    $(LOCAL_PATH)/sounds/Pure_Tone.mp3:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/Pure_Tone.mp3

# ADB Keys
PRODUCT_COPY_FILES += \
    vendor/extra/adb_keys:$(TARGET_RECOVERY_ROOT_OUT)/root/adb_keys \
    vendor/extra/adb_keys:$(TARGET_ROOT_OUT)/adb_keys

$(call inherit-product-if-exists, vendor/opengapps/build/opengapps-packages.mk)
