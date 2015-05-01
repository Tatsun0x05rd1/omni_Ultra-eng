$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/CherryMobile/Ultra/Ultra-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/CherryMobile/Ultra/overlay

LOCAL_PATH := device/CherryMobile/Ultra/prebuilt
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_Ultra
PRODUCT_DEVICE := Ultra
#The following came from the default.prop in the phone ramdisk
#
# ADDITIONAL_DEFAULT_PROPERTIES
#
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=1 \
ro.allow.mock.location=0 \
ro.debuggable=0 \
persist.sys.strict_op_enable=false \
persist.sys.whitelist=/system/etc/whitelist_appops.xml \
persist.sys.usb.config=adb \

#Remove the Goldfish stuff(useless)
PRODUCT_COPY_FILES_OVERRIDES += \
     root/fstab.goldfish \
     root/init.goldfish.rc \
     recovery/root/fstab.goldfish
