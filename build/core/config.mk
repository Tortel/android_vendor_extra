# Requires this change to work: https://review.lineageos.org/c/LineageOS/android_build/+/267263
ifeq ($(PRODUCT_NAME),lineage_guacamole)

TARGET_OTA_ASSERT_DEVICE := coral

# Fake being a Pixel 4 XL
#PRODUCT_DEVICE := coral
PRODUCT_BRAND := Google
PRODUCT_MODEL := Pixel 4 XL
PRODUCT_MANUFACTURER := Google

BUILD_FINGERPRINT := "google/coral/coral:10/QQ3A.200705.002/6506677:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="coral" \
    PRODUCT_BRAND="Google" \
    TARGET_DEVICE="coral" \
    PRODUCT_DEVICE="coral" \
    PRODUCT_MODEL="Pixel 4 XL" \
    PRODUCT_MANUFACTURER="Google" \
    PRIVATE_BUILD_DESC="coral-user 10 QQ3A.200705.002 6506677 release-keys"

# Fix the security patch to keep in line with fingerprint
PLATFORM_SECURITY_PATCH := 2020-07-05

endif

