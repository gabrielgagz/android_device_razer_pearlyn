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
#

LOCAL_PATH := $(call my-dir)

ifneq ($(filter pearlyn,$(TARGET_DEVICE)),)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

# Create links for audcal data files
$(shell mkdir -p $(TARGET_OUT)/etc/firmware/wcd9320; \
	ln -sf /data/misc/audio/wcd9320_anc.bin \
		$(TARGET_OUT)/etc/firmware/wcd9320/wcd9320_anc.bin;\
	ln -sf /data/misc/audio/mbhc.bin \
		$(TARGET_OUT)/etc/firmware/wcd9320/wcd9320_mbhc.bin; \
	ln -sf /data/misc/audio/wcd9320_mad_audio.bin \
		$(TARGET_OUT)/etc/firmware/wcd9320/wcd9320_mad_audio.bin)
		
# Create links for wlan cfg files
$(shell mkdir -p $(TARGET_OUT)/etc/firmware/wlan; \
	mkdir -p $(TARGET_OUT)/etc/firmware/wlan/qca_cld; \
	ln -sf /system/etc/wifi/WCNSS_qcom_cfg.ini \
		$(TARGET_OUT)/etc/firmware/wlan/qca_cld/WCNSS_qcom_cfg.ini;\
	ln -sf /system/etc/wifi/WCNSS_qcom_wlan_nv.bin \
		$(TARGET_OUT)/etc/firmware/wlan/qca_cld/WCNSS_qcom_wlan_nv.bin; \
	ln -sf /persist/wlan_mac.bin \
		$(TARGET_OUT)/etc/firmware/wlan/qca_cld/wlan_mac.bin)
				
endif
