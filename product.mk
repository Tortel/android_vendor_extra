#PRODUCT_PACKAGE_OVERLAYS += vendor/extra/overlay

PRODUCT_SOONG_NAMESPACES += \
    vendor/extra

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

# OnePlus 7 specific stuff
ifneq ($(filter lineage_guacamole,$(TARGET_PRODUCT)),)
# OnePlus camera-related apps
PRODUCT_PACKAGES += \
    OPCameraResources \
    OnePlusCamera \
    OnePlusCameraService \
    OnePlusGallery

# Permissions for OnePlus camera
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/op/etc/permissions/privapp-permissions-oem.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-oem.xml \
    $(LOCAL_PATH)/op/etc/sysconfig/hiddenapi-package.whitelist-oneplus.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/hiddenapi-package.whitelist-oneplus.xml

# Extra camera libs
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/op/lib/libarcsoft_portrait_distortion_correction.so:$(TARGET_COPY_OUT_VENDOR)/lib/libarcsoft_portrait_distortion_correction.so \
   $(LOCAL_PATH)/op/lib64/libarcsoft_portrait_distortion_correction.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libarcsoft_portrait_distortion_correction.so \
   $(LOCAL_PATH)/op/lib64/libDxHdcp.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libDxHdcp.so

endif


$(call inherit-product, vendor/opengapps/build/opengapps-packages.mk)
