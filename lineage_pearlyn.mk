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

$(call inherit-product, device/razer/pearlyn/device.mk)

# Inherit common Lineage TV device.
$(call inherit-product, vendor/lineage/config/common_full_tv.mk)

PRODUCT_DEVICE := pearlyn
PRODUCT_NAME := lineage_pearlyn
PRODUCT_MODEL := Forge
PRODUCT_BRAND := razer
PRODUCT_MANUFACTURER := razer
TARGET_VENDOR := razer

# LANGUAGE SET
PRODUCT_DEFAULT_LANGUAGE := en
PRODUCT_DEFAULT_REGION := US

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=pearlyn \
    PRIVATE_BUILD_DESC="pearlyn-user 6.0.1 M-MMB29M-rzs-us-sf-bld2-19HP-08.02.AM 144 release-keys"

BUILD_FINGERPRINT := razer/pearlyn/pearlyn:6.0.1/M-MMB29M-rzs-us-sf-bld2-19HP-08.02.AM/144:user/release-keys
