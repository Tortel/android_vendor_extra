#PRODUCT_PACKAGE_OVERLAYS += vendor/extra/overlay

PRODUCT_PACKAGES += \
    auditd

PRODUCT_PACKAGES += \
   Email \
   Exchange2

GAPPS_PRODUCT_PACKAGES += DigitalWellbeing

#PRODUCT_PROPERTY_OVERRIDES += \
#    lineage.updater.uri=http://updater.theflamingskull.com/api

#$(call prepend-product-if-exists, vendor/tortel/product.mk)

$(call inherit-vendor-if-exists, vendor/extra/email.mk)

ifeq ($(TARGET_ARCH),arm64)
  GAPPS_VARIANT := nano
else
  GAPPS_VARIANT := pico
endif

$(call inherit-product-if-exists, vendor/opengapps/build/opengapps-packages.mk)
