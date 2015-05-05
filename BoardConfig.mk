USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/CherryMobile/Ultra/BoardConfigVendor.mk
#Flattened device tree of MSM8926 is MSM8226(no LTE)/MSM8960(LTE)
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := MSM8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno305
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

#Bootloader boardname is not the model(Ultra) but the board base model(8926)
TARGET_BOOTLOADER_BOARD_NAME := MSM8926

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37
BOARD_KERNEL_BASE := 0x1dfff00
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x00200100, --kernel_offset 0xFE208100, --second_offset 0xFF100100
BOARD_HAS_NO_REAL_SDCARD := true

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 6454957056
# 6454973440 - 16384 = 6454957056 for crypto footer
# remove length -= 16384 from recovery.fstab
BOARD_CACHEIMAGE_PARTITION_SIZE := 134217728
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/CherryMobile/Ultra/prebuilt/kernel
TARGET_USERIMAGES_USE_EXT4 := true

#Graphics & Resolution
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
DEVICE_RESOLUTION := 720x1280
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
#BOARD_EGL_CFG := device/CherryMobile/Ultra/configs/egl.cfg
TARGET_QCOM_DISPLAY_VARIANT := caf-new
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
#RECOVERY_GRAPHICS_USE_LINELENGTH := true
#EGL_ALWAYS_ASYNC := true

# Shader cache config options
# Maximum size of the GLES Shaders that can be cached for reuse.
# Increase the size if shaders of size greater than 12KB are used.
MAX_EGL_CACHE_KEY_SIZE := 12*1024

# Maximum GLES shader cache size for each app to store the compiled shader
# binaries. Decrease the size if RAM or Flash Storage size is a limitation
# of the device.
MAX_EGL_CACHE_SIZE := 2048*1024

# Hardware tunables
#BOARD_HARDWARE_CLASS := device/CherryMobile/Ultra/cmhw/

# Lights
#TARGET_PROVIDES_LIBLIGHT := true

# Media
#TARGET_QCOM_MEDIA_VARIANT := caf-new
#TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# Power
TARGET_POWERHAL_VARIANT := qcom

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_QCOM_BSP := true

#Brightness setting
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255

# Bluetooth
#BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/xiaomi/armani/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true

# GPS
#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
#TARGET_NO_RPC := true

#Use Init.rc?
TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC:= true
TARGET_RECOVERY_INITRC := device/CherryMobile/Ultra/recovery/root/init.rc
TARGET_RECOVERY_FSTAB := device/CherryMobile/Ultra/recovery/recovery.fstab

#Recovery Additional flags
BOARD_SUPPRESS_EMMC_WIPE := true
#COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

#Sdcard storage path(internal and external
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/sdcard1"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard1"
TW_DEFAULT_EXTERNAL_STORAGE := true


#Have SElinux (For Android 4.3 and above)
HAVE_SELINUX := true
#BOARD_SEPOLICY_DIRS += \
#    device/CherryMobile/Ultra/sepolicy

# The list below is order dependent
#BOARD_SEPOLICY_UNION += \
#    file.te \
#    device.te \
#    app.te \
#    file_contexts

RECOVERY_SDCARD_ON_DATA := true

#Rocker Settings
BOARD_HAS_NO_SELECT_BUTTON := true

# Time services
#BOARD_USES_QC_TIME_SERVICES := true

# Vold
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file


# Wifi
#BOARD_HAS_QCOM_WLAN := true
#BOARD_WLAN_DEVICE := qcwcn
#BOARD_HOSTAPD_DRIVER := NL80211
#BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
#BOARD_WPA_SUPPLICANT_DRIVER := NL80211
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
#WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wlan.ko"
#WIFI_DRIVER_MODULE_NAME := "wlan"
#WPA_SUPPLICANT_VERSION := VER_0_8_X
#TARGET_USES_WCNSS_CTRL := true
#TARGET_USES_QCOM_WCNSS_QMI := true


# inherit from the proprietary version
#-include vendor/xiaomi/armani/BoardConfigVendor.mk
 
#TARGET_SCREEN_HEIGHT := 1280
#DEVICE_RESOLUTION := 720x1280
#TARGET_SCREEN_WIDTH := 720
