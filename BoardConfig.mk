USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/CherryMobile/Ultra/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
#Moto G is msm8960 yet in proc/cpuinfo its msm8226 flattened device tree
TARGET_BOARD_PLATFORM := MSM8960
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
#it's written as generic but for moto g its cortex-a7
TARGET_CPU_VARIANT := cortex-a7

TARGET_BOOTLOADER_BOARD_NAME := Ultra

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37
#BOOT_KERNEL_BASE is assumed to be 0x00000000
BOARD_KERNEL_BASE := 0x00000000
#BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 6454973440
BOARD_FLASH_BLOCK_SIZE := 131072
#BOARD_FLASH_BLOCK_SIZE HAS A DEFAULT OF 131072 so it can stay that way
#kernel is in prebuilt folder so device/manufacturer/model/PREBUILT/kernel
#TARGET_PREBUILT_KERNEL := device/CherryMobile/Ultra/prebuilt/kernel
TARGET_PREBUILT_RECOVERY_KERNEL := device/CherryMobile/Ultra/prebuilt/kernel

#We'll add the target recovery initrc(init.qcom.rc or init.rc) and fstab
#Not needed if we use the init.recovery.{hardware}.rc
TARGET_RECOVERY_INITRC := device/CherryMobile/Ultra/recovery/init.rc
TARGET_RECOVERY_FSTAB := device/CherryMobile/Ultra/recovery/recovery.fstab

BOARD_HAS_NO_SELECT_BUTTON := true

#BOARD_HAVE_BLUETOOTH := true
#We might need this flag:
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
#The following have been adapted from the Moto G since hardware is the same except screen size
DEVICE_RESOLUTION := 720x1280
#I can't see anything...
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
#RECOVERY_GRAPHICS_USE_LINELENGTH := true
#TW_FLASH_FROM_STORAGE := true
HAVE_SELINUX := true
#Unless there is a partition that uses F2FS this is commented out?
#TARGET_USERIMAGES_USE_F2FS := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
#TW_NEVER_UNMOUNT_SYSTEM := true
#TW_ALWAYS_RMRF := true
TARGET_USERIMAGES_USE_EXT4 := true
#BOARD_SUPPRESS_EMMC_WIPE := true
#TARGET_USERIMAGES_USE_F2FS := true
# Use this flag if the board has a ext4 partition larger than 2gb
#---------nodev or mtd or emmc is used in fstab type
BOARD_HAS_LARGE_FILESYSTEM := true
#/sdcard vfat /dev/block/mmcblk1p1
#Custom recovery mount points (TWRP-version of the Ultra)
#/system ext4 /dev/block/platform/msm_sdcc.1/by-name/system 0
#/cache ext4 /dev/block/platform/msm_sdcc.1/by-name/cache 0
#/data ext4 /dev/block/platform/msm_sdcc.1/by-name/userdata -16384
#/sdcard vfat /dev/block/mmcblk1p1 0
#/boot emmc /dev/block/platform/msm_sdcc.1/by-name/boot 0
#/recovery emmc /dev/block/platform/msm_sdcc.1/by-name/recovery 0
#/misc emmc /dev/block/platform/msm_sdcc.1/by-name/misc 0
#/sdcard1 vfat /dev/block/platform/msm_sdcc.1/by-name/usbmsc 0
#/aboot emmc /dev/block/platform/msm_sdcc.1/by-name/aboot 0
#/abootbak emmc /dev/block/platform/msm_sdcc.1/by-name/abootbak 0
#/modem emmc /dev/block/platform/msm_sdcc.1/by-name/modem 0
#/rpm emmc /dev/block/platform/msm_sdcc.1/by-name/rpm 0
#/rpmbak emmc /dev/block/platform/msm_sdcc.1/by-name/rpmbak 0
#/sbl1 emmc /dev/block/platform/msm_sdcc.1/by-name/sbl1 0
#/sbl1bak emmc /dev/block/platform/msm_sdcc.1/by-name/sbl1bak 0
#/sdi emmc /dev/block/platform/msm_sdcc.1/by-name/sdi 0
#/tz emmc /dev/block/platform/msm_sdcc.1/by-name/tz 0
#/tzbak emmc /dev/block/platform/msm_sdcc.1/by-name/tzbak 0
#/persist ext4 /dev/block/platform/msm_sdcc.1/by-name/persist 0
#/tmp ramdisk ramdisk 0
