# inherit from the proprietary version
-include vendor/Micromax/A102/BoardConfigVendor.mk

# Board
TARGET_BOARD_PLATFORM := mt6572
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
ARCH_ARM_HAVE_VFP := true
TARGET_CPU_SMP := true
TARGET_ARCH := arm
ARCH_ARM_HAVE_NEON := true
TARGET_NO_BOOTLOADER := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a7
TARGET_CPU_VARIANT:= cortex-a7
TARGET_CPU_MEMCPY_OPT_DISABLE := true

BOARD_HAS_NO_SELECT_BUTTON := true

# Enable dex-preoptimization
WITH_DEXPREOPT := true
DONT_DEXPREOPT_PREBUILTS := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6572

TARGET_USERIMAGES_USE_EXT4:=true


# MTK HARDWARE
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
BOARD_USES_LEGACY_MTK_AV_BLOB := true
COMMON_GLOBAL_CFLAGS += -DMTK_HARDWARE -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL
COMMON_GLOBAL_CPPFLAGS += -DMTK_HARDWARE
BLOCK_BASED_OTA := false

# RIL
BOARD_RIL_CLASS := ../../../device/Micromax/A102/ril/

BOARD_CONNECTIVITY_VENDOR := MediaTek
BOARD_CONNECTIVITY_MODULE := conn_soc

# Partitions & Image
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2452595200
BOARD_SYSTEMIMAGE_PARTITION_SIZE:=836600000
BOARD_CACHEIMAGE_PARTITION_SIZE := 134217728
BOARD_CACHEIMAGE_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

# Flags
TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

TARGET_KMODULES := true

COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# Kernel 
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive selinux=0
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_PREBUILT_KERNEL := device/Micromax/A102/kernel
BOARD_CUSTOM_BOOTIMG_MK := device/Micromax/A102/MTKbootimg.mk
BOARD_CUSTOM_BOOTIMG := true

# Recovery
TARGET_RECOVERY_FSTAB := device/Micromax/A102/rootdir/recovery.fstab

TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun%d/file"

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/Micromax/A102/bluetooth

# EGL settings
BOARD_EGL_CFG := device/Micromax/A102/configs/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true

# Healthd & Charging
HEALTHD_ENABLE_TRICOLOR_LED := true
RED_LED_PATH := /sys/class/leds/red/brightness
GREEN_LED_PATH := /sys/class/leds/green/brightness
BLUE_LED_PATH := /sys/class/leds/blue/brightness
# Next lines, fix charging-mod on power off. It needs to modify the init.cpp, too.
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/BOOT/BOOT/boot/boot_mode
BOARD_CHARGER_DISABLE_INIT_BLANK := true
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true
BOARD_HAL_STATIC_LIBRARIES := libhealthd.mtk
BOARD_HEALTHD_CUSTOM_CHARGER_RES := device/Micromax/A102/charger/images

# Selinux
BOARD_SEPOLICY_DIRS := \
       device/Micromax/A102/sepolicy

#BOARD_SEPOLICY_UNION := \
       device.te \
       app.te \
       netd.te \
       system.te \
       file_contexts

# WIFI
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM:="/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P

# GPS
TARGET_SPECIFIC_HEADER_PATH := device/Micromax/A102/include

LCM_HEIGHT=800
LCM_WIDTH=480

USE_LEGACY_MTK_AV_BLOB=true

# Use old sepolicy version
POLICYVERS := 26

# Hack for build
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)
