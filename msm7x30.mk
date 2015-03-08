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

# Proprietary vendor tree
$(call inherit-product, vendor/htc/msm7x30-common/msm7x30-vendor.mk)

# CM stuff
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml


# USB init file
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/rootdir/init.htc7x30.usb.rc:root/init.htc7x30.usb.rc

# Media config files
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/rootdir/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
    $(COMMON_PATH)/rootdir/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
    $(COMMON_PATH)/rootdir/system/etc/audio_policy.conf:system/etc/audio_policy.conf

# Egl.cfg
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/rootdir/system/lib/egl/egl.cfg:system/lib/egl/egl.cfg

# Common GPS config
PRODUCT_COPY_FILES += \
	device/common/gps/gps.conf_EU_SUPL:system/etc/gps.conf

# Audio
PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio.usb.default \
	audio.primary.msm7x30 \
	audio_policy.msm7x30 \
	libaudioutils

# Video
PRODUCT_PACKAGES += \
	copybit.msm7x30 \
	gralloc.msm7x30 \
	hwcomposer.msm7x30  \
	memtrack.msm7x30


# Media
PRODUCT_PACKAGES += \
	libstagefrighthw \
	libOmxCore \
	libdivxdrmdecrypt \
	libOmxVdec \
	libOmxVenc \
	libc2dcolorconvert

# GPS
PRODUCT_PACKAGES += librpc

# Device-Specific HALs
PRODUCT_PACKAGES += \
	power.msm7x30

# Misc
PRODUCT_PACKAGES += \
    libnetcmdiface \
    com.android.future.usb.accessory \
    libsurfaceflinger_client


# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni


# Misc. property overrides
PRODUCT_PROPERTY_OVERRIDES += \
	ro.setupwizard.enable_bypass=1 \
	ro.com.google.locationfeatures=1 \
	ro.com.google.networklocation=1 \
	ro.com.google.gmsversion=4.0_r1 \
	dalvik.vm.lockprof.threshold=500 \
	dalvik.vm.dexopt-flags=m=y \
	dalvik.vm.heapstartsize=5m \
	dalvik.vm.heapgrowthlimit=36m \
	dalvik.vm.heapsize=128m \
	dalvik.vm.heaptargetutilization=0.25 \
	dalvik.vm.heapminfree=512k \
	dalvik.vm.heapmaxfree=2m \
	dalvik.vm.debug.alloc=0 \
	ro.config.low_ram=true \
	ro.sf.lcd_density=240 \
	ro.vold.umsdirtyratio=20 \
	ro.sys.fw.bg_apps_limit=12 \
	ro.config.max_starting_bg=6 \
	ro.zygote.disable_gl_preload=true \
	debug.sf.hw=1 \
	debug.egl.hw=1 \
	video.accelerate.hw=1 \
	debug.egl.recordable.rgba8888=1 \
	debug.sf.no_hw_vsync=1 \
	debug.mdpcomp.logs=0 \
	dev.pm.dyn_samplingrate=1 \
	ro.opengles.version=131072 \
	com.qc.hardware=true \
	debug.composition.type=gpu \
	persist.sys.usb.config=mass_storage,adb \
	persist.service.adb.enable=1 \
	persist.service.debuggable=1 \
	persist.sys.strictmode.visual=0 \
	persist.sys.strictmode.disable=1 \
	media.a1026.nsForVoiceRec=0 \
	media.a1026.enableA1026=0 \
	htc.audio.alt.enable=0 \
	htc.audio.hac.enable=1

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

