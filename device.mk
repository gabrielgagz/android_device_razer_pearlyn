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

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/Nexus_Remote.kl:system/usr/keylayout/Nexus_Remote.kl \
    $(LOCAL_PATH)/configs/keylayout/Vendor_2836_Product_0001.kl:system/usr/keylayout/Vendor_2836_Product_0001.kl \
    $(LOCAL_PATH)/configs/keylayout/Vendor_045e_Product_02fd.kl:system/usr/keylayout/Vendor_045e_Product_02fd.kl
    
# Rootdir
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.class_main.sh \
    init.mdm.sh \
    init.qcom.class_core.sh \
    init.qcom.early_boot.sh \
    init.qcom.factory.sh \
    init.qcom.rc \
    init.qcom.sh \
    init.qcom.ssr.sh \
    init.qcom.syspart_fixup.sh \
    init.qcom.usb.rc \
    init.trace.rc \
    ueventd.qcom.rc    
    
# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/audio_platform_info.xml:system/vendor/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/configs/media/audio_platform_info_i2s.xml:system/vendor/etc/audio_platform_info_i2s.xml \
    $(LOCAL_PATH)/configs/media/audio_policy.conf:system/vendor/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media/media_profiles.xml:system/vendor/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/media/mixer_paths.xml:system/vendor/etc/mixer_paths.xml \
    $(LOCAL_PATH)/configs/media/mixer_paths_i2s.xml:system/etc/mixer_paths_i2s.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_tv.xml:system/etc/media_codecs_google_tv.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml
    
# Sys Init
PRODUCT_PACKAGES += \
    hcidump.sh \
    hsic.control.bt.sh \
    init.ath3k.bt.sh \
    init.crda.sh \
    init.qcom.audio.sh \
    init.qcom.bt.sh \
    init.qcom.coex.sh \
    init.qcom.efs.sync.sh \
    init.qcom.fm.sh \
    init.qcom.modem_links.sh \
    init.qcom.post_boot.sh \
    init.qcom.sdio.sh \
    init.qcom.wifi.sh \
    qca6234-service.sh \
    usf_post_boot.sh \
    sec_config \
    vold.fstab \
    usf_post_boot.sh    
    
# LineageCustomizer & PearlynLed
PRODUCT_PACKAGES += \
	LineageCustomizer \
	PearlynLed
    
# Permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/permissions/pearlyn_features.xml:system/etc/permissions/pearlyn_features.xml \
    $(LOCAL_PATH)/configs/permissions/nrdp.modelgroup.xml:system/etc/permissions/nrdp.modelgroup.xml

# Wifi Config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/wifi/WCNSS_qcom_wlan_nv.bin \
    $(LOCAL_PATH)/configs/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini
    
# Hostapd Config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    $(LOCAL_PATH)/configs/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/configs/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny
    
# Build.prop overrides
PRODUCT_PROPERTY_OVERRIDES += \
	dalvik.vm.dex2oat-swap=false \
	ro.product.first_api_level=22 \
	ro.com.google.clientidbase=android-pearlyn
    
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
	libtinyxml2 \
	libtinyxml \
	libwifi-hal-qcom \
	libcommon_time_client \
	libjhead_jni \
	libjhead \
	libsqlite_jni \
	libxml2
	
# DEPS: binaries
PRODUCT_PACKAGES += \
	cplay \
	hostapd \
	setup_fs \
	tinycap \
	tinypcminfo \
	tinyplay \
	wpa_supplicant
	
# Without this filter, we get very close to the limit.
PRODUCT_DEX_PREOPT_DEFAULT_FLAGS += --compiler-filter=space

# Bootanimation
TARGET_SCREEN_WIDTH := 1920
TARGET_SCREEN_HEIGHT := 1080
TARGET_BOOTANIMATION_MULTITHREAD_DECODE := true
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true   

# Treble packages
$(call inherit-product, device/razer/pearlyn/treble.mk)     
    
# TWRP (optional)
ifeq ($(WITH_TWRP),true)
PRODUCT_COPY_FILES += $(LOCAL_PATH)/twrp/twrp.fstab:recovery/root/etc/twrp.fstab
endif
