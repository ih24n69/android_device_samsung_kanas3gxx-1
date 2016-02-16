USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/kanas3gxx/BoardConfigVendor.mk


# Audio
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_SAMSUNG_DUAL_SIM := true

# Radio
SIM_COUNT := 2
TARGET_GLOBAL_CFLAGS += -DANDROID_MULTI_SIM
TARGET_GLOBAL_CPPFLAGS += -DANDROID_MULTI_SIM

TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a7
TARGET_CPU_VARIANT := cortex-a7
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_USE_NON_NEON_MEMCPY := true
TARGET_BOARD_PLATFORM := sc8830
TARGET_BOOTLOADER_BOARD_NAME := sc7735s
BOARD_VENDOR := samsung

# Odex file no create
DISABLE_DEXPREOPT := true

BOARD_KERNEL_CMDLINE := init=/sbin/init root=/dev/ram rw initrd=0x11000000,16M console=ttyDCC0 mem=88M
BOARD_KERNEL_PAGESIZE := 4096

TARGET_USERIMAGES_USE_EXT4 := true

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 576716800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 209715200
BOARD_CACHEIMAGE_PARTITION_SIZE := 69206016
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 512
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true
BOARD_USES_ALSA_AUDIO := true

# Kernel
TARGET_PREBUILT_KERNEL := device/samsung/kanas3gxx/kernel

BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true

# Compiler flags
TARGET_GLOBAL_CFLAGS += -mfloat-abi=softfp -mfpu=neon-vfpv4 -mtune=cortex-a7
TARGET_GLOBAL_CPPFLAGS += -mfloat-abi=softfp -mfpu=neon-vfpv4 -mtune=cortex-a7

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_HAVE_SAMSUNG_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/kanas3gxx/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/samsung/kanas3gxx/bluetooth/libbt_vndcfg.txt

# Wifi
BOARD_WLAN_DEVICE                := bcmdhd
BOARD_WLAN_DEVICE_REV            := bcm4330
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P          := "/system/etc/wifi/bcmdhd_p2p.bin"
WIFI_DRIVER_MODULE_NAME          := "dhd"
WIFI_DRIVER_MODULE_ARG           := "firmware_path=/system/etc/wifi/bcmdhd_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_MODULE_AP_ARG        := "firmware_path=/system/etc/wifi/bcmdhd_apsta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_BAND                        := 802_11_ABG
BOARD_HAVE_SAMSUNG_WIFI          := true

# Hardware rendering
TARGET_BOARD_PLATFORM_GPU := ARM Mali-400
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/samsung/kanas3gxx/config/egl.cfg
BOARD_USE_MHEAP_SCREENSHOT := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# Camera
CAMERA_SUPPORT_SIZE := 5M
#android zsl capture
TARGET_BOARD_CAMERA_ANDROID_ZSL_MODE := false
#back camera rotation capture
TARGET_BOARD_BACK_CAMERA_ROTATION := false
#front camera rotation capture
TARGET_BOARD_FRONT_CAMERA_ROTATION := false
#rotation capture
TARGET_BOARD_CAMERA_ROTATION_CAPTURE := false
TARGET_BOARD_CAMERA_HAL_VERSION := HAL1.0

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging

# Assert
TARGET_OTA_ASSERT_DEVICE := kanas,SM-G355H,kanas3gxx,kanas3gnfc,kanas3gnfcxx


DEVICE_RESOLUTION := 480x800

# RIL
BOARD_RIL_CLASS := ../../../device/samsung/kanas3gxx/ril/

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/kanas3gxx/root/fstab.kanas3gxx
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"

# healthd
BOARD_HAL_STATIC_LIBRARIES := libhealthd.kanas3gxx

# CMHW
BOARD_HARDWARE_CLASS := hardware/samsung/cmhw/ device/samsung/kanas3gxx/cmhw/

# GPS
TARGET_SPECIFIC_HEADER_PATH := device/samsung/kanas3gxx/include

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/kanas3gxx/sepolicy

BOARD_SEPOLICY_UNION += \
    file_contexts \
