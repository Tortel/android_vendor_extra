PRODUCT_PACKAGE_OVERLAYS += vendor/extra/overlay

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.lazy.dexopt=1

# Snap Camera
PRODUCT_PACKAGES += \
    Snap

# Dex Preopt
WITH_DEXPREOPT := true
DONT_DEXPREOPT_PREBUILTS := true

$(call prepend-product-if-exists, vendor/invisiblek/product.mk)