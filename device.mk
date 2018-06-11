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

# Get non-open-source specific aspects for atv
$(call inherit-product-if-exists, vendor/google/atv/atv-common.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/razer/pearlyn/overlay

PRODUCT_AAPT_CONFIG := large xlarge
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_CHARACTERISTICS := nosdcard,tv

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/Nexus_Remote.kl:system/usr/keylayout/Nexus_Remote.kl \
    $(LOCAL_PATH)/keylayout/Vendor_2836_Product_0001.kl:system/usr/keylayout/Vendor_2836_Product_0001.kl
    
# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.hdmi.cec.xml:system/etc/permissions/android.hardware.hdmi.cec.xml \
    frameworks/native/data/etc/android.software.device_admin.xml:system/etc/permissions/android.software.device_admin.xml \
    frameworks/native/data/etc/android.software.managed_users.xml:system/etc/permissions/android.software.managed_users.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.software.app_widgets.xml:system/etc/permissions/android.software.app_widgets.xml \
    $(LOCAL_PATH)/etc/permissions/tv_features.xml:system/etc/permissions/tv_features.xml \
    $(LOCAL_PATH)/etc/permissions/com.qti.dpmframework.xml:system/etc/permissions/com.qti.dpmframework.xml \
    $(LOCAL_PATH)/etc/permissions/dpmapi.xml:system/etc/permissions/dpmapi.xml \
    $(LOCAL_PATH)/etc/permissions/android.hardware.type.television.xml:system/etc/permissions/android.hardware.type.television.xml \
    $(LOCAL_PATH)/etc/permissions/ConnectivityExt.xml:system/etc/permissions/ConnectivityExt.xml \
    $(LOCAL_PATH)/etc/permissions/com.quicinc.cne.xml:system/etc/permissions/com.quicinc.cne.xml \
    $(LOCAL_PATH)/etc/permissions/cneapiclient.xml:system/etc/permissions/cneapiclient.xml \
    $(LOCAL_PATH)/etc/permissions/nrdp.modelgroup.xml:system/etc/permissions/nrdp.modelgroup.xml
    
        
# Wifi Config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/etc/permissions/com.qti.dpmframework.xml:system/etc/permissions/com.qti.dpmframework.xml \
    $(LOCAL_PATH)/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/etc/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/etc/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/wifi/WCNSS_qcom_wlan_nv.bin \
    $(LOCAL_PATH)/etc/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini
    
# Hostapd Config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    $(LOCAL_PATH)/etc/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/etc/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny
    
# Build.prop overrides
PRODUCT_PROPERTY_OVERRIDES += \
	net.bt.name=Forge \
	dalvik.vm.dex2oat-swap=false \
	ro.product.first_api_level=22 \
	ro.com.google.clientidbase=android-pearlyn
	
# Power HAL
PRODUCT_PACKAGES += \
    power.apq8084
    
# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audiod \
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
    
# twrp
PRODUCT_COPY_FILES += $(LOCAL_PATH)/twrp/twrp.fstab:recovery/root/etc/twrp.fstab 
