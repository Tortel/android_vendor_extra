#PRODUCT_PACKAGE_OVERLAYS += vendor/extra/overlay
PRODUCT_PACKAGES += \
    auditd \
    Exchange2

#PRODUCT_PROPERTY_OVERRIDES += \
#    lineage.updater.uri=http://updater.theflamingskull.com/api

#$(call prepend-product-if-exists, vendor/tortel/product.mk)

ifneq ($(filter arm64,$(TARGET_ARCH)),)
  GAPPS_VARIANT := nano
else
  GAPPS_VARIANT := pico
endif


$(call inherit-product-if-exists, vendor/opengapps/build/opengapps-packages.mk)

