# Requires this change to work: https://review.lineageos.org/c/LineageOS/android_build/+/267263
ifeq ($(PRODUCT_NAME),lineage_guacamole)

TARGET_OTA_ASSERT_DEVICE := coral

# Fake being a Pixel 4 XL
#PRODUCT_DEVICE := coral
PRODUCT_BRAND := Google
PRODUCT_MODEL := Pixel 4 XL
PRODUCT_MANUFACTURER := Google

BUILD_FINGERPRINT := "google/coral/coral:11/RQ3A.210905.001/7511028:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="coral" \
    PRODUCT_BRAND="Google" \
    TARGET_DEVICE="coral" \
    PRODUCT_DEVICE="coral" \
    PRODUCT_MODEL="Pixel 4 XL" \
    PRODUCT_MANUFACTURER="Google" \
    PRIVATE_BUILD_DESC="coral-user 11 RQ3A.210905.001 7511028 release-keys"

# Fix the security patch to keep in line with fingerprint
PLATFORM_SECURITY_PATCH := 2021-09-05

endif

ifeq ($(PRODUCT_NAME),lineage_x2)

TARGET_OTA_ASSERT_DEVICE := marlin

# Fake being a Pixel XL
#PRODUCT_DEVICE := marlin
PRODUCT_BRAND := Google
PRODUCT_MODEL := Pixel XL
PRODUCT_MANUFACTURER := Google

BUILD_FINGERPRINT := "google/marlin/marlin:10/QP1A.191005.007.A3/5972272:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="marlin" \
    PRODUCT_BRAND="Google" \
    TARGET_DEVICE="marlin" \
    PRODUCT_DEVICE="marlin" \
    PRODUCT_MODEL="Pixel XL" \
    PRODUCT_MANUFACTURER="Google" \
    PRIVATE_BUILD_DESC="marlin-user 10 QP1A.191005.007.A3 5972272 release-keys"

# Fix the security patch to keep in line with fingerprint
PLATFORM_SECURITY_PATCH := 2019-10-06

endif
