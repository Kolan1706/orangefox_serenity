DEVICE_PATH := device/xiaomi/serenity

# Platform & Bootloader
TARGET_BOARD_PLATFORM := ums9230
TARGET_BOOTLOADER_BOARD_NAME := serenity
TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true

# Architecture (Cortex-A75/A55)
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a75

# Kernel
BOARD_KERNEL_PAGESIZE := 4096
BOARD_BOOT_HEADER_VERSION := 4
BOARD_KERNEL_BASE := 0x00000000
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)

# Binary Paths (Kernel & DTBO)
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/dtbo.img
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/kernel

# Display & Brightness (Based on your ADB logs)
TARGET_SCREEN_HEIGHT := 1640
TARGET_SCREEN_WIDTH := 720
TW_THEME := portrait_hdpi
TW_BRIGHTNESS_PATH := "/sys/class/backlight/sprd_backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 150

# Partitions (Dynamic/Super)
BOARD_SUPER_PARTITION_SIZE := 5368709120
BOARD_SUPER_PARTITION_GROUPS := xiaomi_dynamic_partitions
BOARD_XIAOMI_DYNAMIC_PARTITIONS_SIZE := 5364514816
BOARD_XIAOMI_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor product system_ext vendor_dlkm system_dlkm

# File Systems
TARGET_USERIMAGES_USE_EROFS := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true

# Kernel Modules (Touch & Graphics)
BOARD_RECOVERY_RAMDISK_KERNEL_MODULES := $(wildcard $(DEVICE_PATH)/recovery/root/vendor/lib/modules/*.ko)
TW_LOAD_VENDOR_MODULES := "mali_kbase.ko focaltech_ft8057_spi_ts.ko novatek_nt36528a_spi_ts.ko hq_touch.ko sprd-drm.ko"

# OrangeFox Flags
TW_DEVICE_VERSION := 1
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_F2FS := true
TW_EXTRA_LANGUAGES := true
TARGET_SYSTEM_PROP := $(DEVICE_PATH)/system.prop

# A/B Slots
AB_OTA_UPDATER := true
BOARD_USES_RECOVERY_AS_BOOT := false
BOARD_USES_VENDOR_BOOT := true
