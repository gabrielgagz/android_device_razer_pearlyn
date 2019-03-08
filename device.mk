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

# Lang
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Include atv base
$(call inherit-product, device/google/atv/products/atv_base.mk)

# Get non-open-source specific aspects for pearlyn
$(call inherit-product-if-exists, vendor/razer/pearlyn/pearlyn-vendor.mk)

# Get non-open-source specific aspects for atv
$(call inherit-product-if-exists, vendor/google/atv/atv-common.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/razer/pearlyn/overlay

PRODUCT_AAPT_CONFIG := large xlarge
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_CHARACTERISTICS := nosdcard,tv

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/Nexus_Remote.kl:system/usr/keylayout/Nexus_Remote.kl \
    $(LOCAL_PATH)/configs/keylayout/Vendor_2836_Product_0001.kl:system/usr/keylayout/Vendor_2836_Product_0001.kl \
    $(LOCAL_PATH)/configs/keylayout/Vendor_045e_Product_02fd.kl:system/usr/keylayout/Vendor_045e_Product_02fd.kl
    
# Rootdir
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.recovery.qcom.rc \
    init.trace.rc \
    ueventd.qcom.rc    
    
# Media Config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_tv.xml:system/etc/media_codecs_google_tv.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml
    
# Audio Config
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_PATH)/configs/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config        
    
# PearlynLed
PRODUCT_PACKAGES += \
	PearlynLed
    
# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.hdmi.cec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.hdmi.cec.xml \
    frameworks/native/data/etc/android.software.device_admin.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.device_admin.xml \
    frameworks/native/data/etc/android.software.managed_users.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.managed_users.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.software.app_widgets.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.app_widgets.xml \
    $(LOCAL_PATH)/configs/permissions/nrdp.modelgroup.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/nrdp.modelgroup.xml
        
# Wifi Config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/WCNSS_qcom_wlan_nv.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/WCNSS_qcom_wlan_nv.bin \
    $(LOCAL_PATH)/configs/wifi/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/firmware/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/configs/wifi/WCNSS_cfg.dat:$(TARGET_COPY_OUT_VENDOR)/firmware/WCNSS_cfg.dat
    
# Custom wifi service
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/vendor/etc/init/android.hardware.wifi@1.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.wifi@1.0-service.rc    
    
# Hostapd Config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    $(LOCAL_PATH)/configs/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/configs/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny
    
# Build.prop overrides
PRODUCT_PROPERTY_OVERRIDES += \
	dalvik.vm.dex2oat-swap=false \
	ro.product.first_api_level=22 \
	ro.com.google.clientidbase=android-pearlyn \
	ro.sf.lcd_density=320
    
# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.apq8084 \
    audio.primary.apq8084 \
    audio.r_submix.default \
    libaudioroute \
    audio.usb.default \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    tinymix
    
 # Display
PRODUCT_PACKAGES += \
	libc2dcolorconvert \
	libgenlock \
	libmm-omxcore \
	libstagefrighthw \
	liboverlay \
	libqdutils \
	libqservice \
	libvirtual \
    gralloc.apq8084 \
    hwcomposer.apq8084 \
    hdmi_cec.apq8084 \
    lights.apq8084 \
    memtrack.apq8084

# Bluetooth
PRODUCT_PACKAGES += \
	libbt-vendor.apq8084
    
# Keystore
PRODUCT_PACKAGES += \
    keystore.apq8084
    
# DEPS: libs
PRODUCT_PACKAGES += \
    libcurl \
	libion \
	libOmxAacEnc \
	libOmxAmrEnc \
	libOmxCore \
	libOmxEvrcEnc \
	libOmxQcelp13Enc \
	libOmxVdec \
	libOmxVdpp \
	libOmxVenc \
	libQWiFiSoftApCfg \
	librmnetctl \
	libtinyxml2 \
	libtinyxml \
	libcommon_time_client \
	libjhead_jni \
	libjhead \
	libsqlite_jni \
	libxml2
	
# DEPS: binaries
PRODUCT_PACKAGES += \
	cplay \
	hostapd \
	rmnetcli \
	setup_fs \
	tinycap \
	tinypcminfo \
	tinyplay
	
# Wpa Supplicant
PRODUCT_PACKAGES += \
	libwpa_client \
	wpa_supplicant \
	wpa_supplicant.conf
	
# Seccomp
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp/mediacodec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(LOCAL_PATH)/seccomp/mediaextractor.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy		
	
# Without this filter, we get very close to the limit.
PRODUCT_DEX_PREOPT_DEFAULT_FLAGS += --compiler-filter=space

# Bootanimation
TARGET_SCREEN_WIDTH := 1920
TARGET_SCREEN_HEIGHT := 1080
TARGET_BOOTANIMATION_MULTITHREAD_DECODE := true
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_HALF_RES := true   

# Hidl packages
$(call inherit-product, device/razer/pearlyn/hidl.mk)     
    
# TWRP (optional)
ifeq ($(WITH_TWRP),true)
PRODUCT_COPY_FILES += $(LOCAL_PATH)/twrp/twrp.fstab:recovery/root/etc/twrp.fstab
endif
