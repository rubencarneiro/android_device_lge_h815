#
# Copyright (C) 2015 The CyanogenMod Project
#
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/lge/h815/h815-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Init configuration
#PRODUCT_PACKAGES += \
#    fstab.h815 \
#    init.device.rc \

# UBPorts
 PRODUCT_PACKAGES += \
     libubuntu_application_api \
     direct_ubuntu_application_sensors_c_api_for_hybris_test \
     direct_ubuntu_application_sensors_for_hybris_test \
     direct_ubuntu_application_gps_c_api_for_hybris_test \
     libcamera_compat_layer \
     libmedia_compat_layer_32 \
     libaudioflingerglue \
     libdroidmedia \
     libminisf \
     minimediaservice \
     miniafservice

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml
	
# Gps
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf

# common g4
$(call inherit-product, device/lge/g4-common/g4.mk)

### Ubuntu Touch ###
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ubuntu/android.conf:system/halium/etc/ubuntu-touch-session.d/android.conf \
    $(LOCAL_PATH)/ubuntu/70-android.rules:system/halium/lib/udev/rules.d/70-android.rules \
    $(LOCAL_PATH)/ubuntu/rsyslog.conf:system/halium/etc/rsyslog.conf \
    $(LOCAL_PATH)/ubuntu/touch.pa:system/halium/etc/pulse/touch.pa \

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.vanilla.abi=1

### End Ubuntu Touch ###
