# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

TARGET_OTA_ASSERT_DEVICE := pearlyn

DEVICE_PATH := device/razer/pearlyn

# ARCH
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait
TARGET_CPU_ABI2 := armeabi
ENABLE_CPUSETS := true
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := apq8084
TARGET_BOARD_PLATFORM_GPU := qcom-adreno420
TARGET_GLOBAL_CFLAGS += -ffast-math -fweb
TARGET_GLOBAL_CPPFLAGS += -ffast-math -fweb
HAVE_ADRENO_SOURCE:= false
BOARD_USES_QCOM_HARDWARE := true

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=31 vmalloc=400MB
BOARD_KERNEL_PAGESIZE := 4096
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100
BOARD_KERNEL_IMAGE_NAME := zImage-dtb
TARGET_KERNEL_CONFIG := lineage_pearlyn_defconfig
TARGET_KERNEL_SOURCE := kernel/razer/pearlyn
TARGET_KERNEL_CROSS_COMPILE_PREFIX := $(PWD)/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin/arm-eabi-

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 15309209
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16148071 
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true

# HDMI
TARGET_HAVE_HDMI_OUT := true
TARGET_USE_HDMI_AS_PRIMARY := true

# inherit from the proprietary version
-include vendor/razer/pearlyn/BoardConfigVendor.mk

# Bluetooth
BOARD_HAVE_BLUETOOTH_QCOM := true
BOARD_HAS_QCA_BT_ROME := true

# Audio
TARGET_QCOM_AUDIO_VARIANT := caf
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_TINY_ALSA_AUDIO := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_LOW_LATENCY_PRIMARY := true
AUDIO_FEATURE_ENABLED_HWDEP_CAL := true
AUDIO_FEATURE_ENABLED_LOW_LATENCY_CAPTURE := true
AUDIO_FEATURE_ENABLED_NEW_SAMPLE_RATE := true
AUDIO_FEATURE_ENABLED_ANC_HEADSET := true
BOARD_USES_ES705 := true

# Snapdragon LLVM Compiler
TARGET_USE_SDCLANG := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := APQ8084

# Graphics & Display
TARGET_QCOM_DISPLAY_VARIANT := caf
BOARD_EGL_CFG := $(DEVICE_PATH)/egl.cfg
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 5000000
VSYNC_EVENT_PHASE_OFFSET_NS := 7500000
TARGET_OMX_LEGACY_RESCALING := true
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
USE_OPENGL_RENDERER := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
TARGET_USE_COMPAT_GRALLOC_ALIGN := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
DISPLAY_DEBUG_SWAPINTERVAL := true
TARGET_USES_MEDIA_EXTENSIONS := true

# Legacy BLOB Support
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true

# Power
TARGET_POWERHAL_VARIANT := qcom

# Media
TARGET_USES_ION := true
TARGET_QCOM_MEDIA_VARIANT := caf

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_MODULE_NAME := "wlan"
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wlan.ko"
WPA_SUPPLICANT_VERSION := VER_0_8_X

# No NFC and CAMERA
BOARD_HAVE_NFC := false
BOARD_HAVE_CAMERA := false

# Time
BOARD_USES_QC_TIME_SERVICES := true

# SELinux
 -include device/qcom/sepolicy/sepolicy.mk
 
# Enable dex-preoptimization to speed up first boot sequence
WITH_DEXPREOPT_BOOT_IMG_ONLY := true

# DRM Protected Video
BOARD_USES_LIBDRM := true
BOARD_WIDEVINE_OEMCRYPTO_LEVEL := 1

# LZMA compression
WITH_LZMA_OTA:= true

# sepolicy
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery.fstab
LZMA_RAMDISK_TARGETS := recovery

# TWRP (optional)
ifeq ($(WITH_TWRP),true)
 -include device/razer/pearlyn/twrp.mk
endif
