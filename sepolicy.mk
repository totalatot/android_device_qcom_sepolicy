# Board specific SELinux policy variable definitions
BOARD_VENDOR_SEPOLICY_DIRS += \
    device/qcom/sepolicy-legacy/common \
    device/qcom/sepolicy-legacy/ssg \
    device/qcom/sepolicy-legacy/$(TARGET_BOARD_PLATFORM)

ifneq (,$(filter userdebug eng, $(TARGET_BUILD_VARIANT)))
BOARD_VENDOR_SEPOLICY_DIRS += \
    device/qcom/sepolicy-legacy/test

SELINUX_IGNORE_NEVERALLOWS := true
endif

SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += \
    device/qcom/sepolicy-legacy/public

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    device/qcom/sepolicy-legacy/private

# Board specific SELinux policy variable definitions for legacy devices
BOARD_VENDOR_SEPOLICY_DIRS += \
    device/qcom/sepolicy-legacy/legacy-common

# Add sepolicy version to support OS upgrade and backward compatibility
BOARD_SEPOLICY_VERS := $(PLATFORM_SDK_VERSION).0

-include device/lineage/sepolicy/qcom/sepolicy.mk
