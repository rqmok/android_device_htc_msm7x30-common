#
# Copyright (C) 2011 The CyanogenMod Project
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
PRODUCT_PACKAGE_OVERLAYS += device/htc/msm7x30-common/overlay

COMMON_PATH := device/htc/msm7x30-common

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# System Properties
-include $(COMMON_PATH)/system_prop.mk

# Ramdisk files
PRODUCT_PACKAGES += \
	fstab.qcom \
	init.qcom.rc \
	init.qcom.power.rc \
	init.qcom.usb.rc \
	ueventd.qcom.rc

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml

# Media config files
PRODUCT_COPY_FILES += \
	frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video.xml \
	$(COMMON_PATH)/rootdir/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
	$(COMMON_PATH)/rootdir/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
	$(COMMON_PATH)/rootdir/system/etc/audio_policy.conf:system/etc/audio_policy.conf

# Camera
PRODUCT_PACKAGES += \
	camera.msm7x30 \
	libshim_camera \
	libshim_skia \
	Snap

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    audio.primary.msm7x30 \
    libaudio-resampler \
    libaudioparameter

# Adreno
PRODUCT_PACKAGES += \
    libstlport

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm7x30 \
    gralloc.msm7x30 \
    hwcomposer.msm7x30 \
    memtrack.msm7x30 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libqdutils \
    libtilerenderer

# QCOM OMX
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libc2dcolorconvert

# Wifi
PRODUCT_PACKAGES += \
	libnetcmdiface \
	dhcpcd.conf \
	hostapd \
	wpa_supplicant \
	wpa_supplicant.conf

# IPv6 tethering
PRODUCT_PACKAGES += \
	ebtables \
	ethertypes

# GPS
PRODUCT_PACKAGES += librpc

# Device-Specific HALs
PRODUCT_PACKAGES += \
	gps.msm7x30 \
	power.msm7x30

# DeviceSettings
PRODUCT_PACKAGES += DeviceSettings

# ART
PRODUCT_PROPERTY_OVERRIDES += \
	dalvik.vm.dex2oat-filter=balanced \
	dalvik.vm.dex2oat-swap=false \
	dalvik.vm.image-dex2oat-filter=speed

# Set releasetype to snapshot
PRODUCT_PROPERTY_OVERRIDES += ro.ap.releasetype=SNAPSHOT


# Proprietary vendor tree
$(call inherit-product, vendor/htc/msm7x30-common/msm7x30-common-vendor.mk)
