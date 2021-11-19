#PRODUCT_PACKAGE_OVERLAYS += vendor/extra/overlay

PRODUCT_SOONG_NAMESPACES += \
    vendor/extra

PRODUCT_PACKAGES += \
    auditd

# OpenGapps related section
GAPPS_EXCLUDED_PACKAGES := GooglePackageInstaller

GAPPS_PRODUCT_PACKAGES += \
    AndroidAuto

GAPPS_VARIANT := nano
#$(call inherit-product, vendor/opengapps/build/opengapps-packages.mk)

# Sounds
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sounds/Cloud.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/Cloud.ogg \
    $(LOCAL_PATH)/sounds/Pollux.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/Pollux.ogg \
    $(LOCAL_PATH)/sounds/Pure_Tone.mp3:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/Pure_Tone.mp3

# ADB Keys
PRODUCT_COPY_FILES += \
    vendor/extra/adb_keys:$(TARGET_RECOVERY_ROOT_OUT)/root/adb_keys \
    vendor/extra/adb_keys:$(TARGET_ROOT_OUT)/adb_keys

# Gapps
$(call inherit-product-if-exists, vendor/gapps/common/common-vendor.mk)
WITH_GMS := true
