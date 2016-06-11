#
# Property overrides msm7x30
#

PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=240 \
	ro.gsm.2nd_data_retry_config=max_retries=3,2000,2000,2000 \
	com.qc.hardware=true

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
	rild.libpath=/system/lib/libhtc_ril.so \
	ro.ril.ecc.HTC-GCC=999,112,997 \
	ro.ril.ecc.HTC-WWE=999 \
	ro.ril.ecc.HTC-ELL=92,93,94 \
	ro.ril.enable.a52.HTC-ITA=1 \
	ro.ril.enable.a53.HTC-ITA=1 \
	ro.ril.enable.a52=0 \
	ro.ril.enable.a53=1 \
	ro.ril.disable.fd.plmn.prefix=23402,23410,23411 \
	ro.ril.enable.sdr=1 \
	ro.ril.enable.amr.wideband=0 \
	ro.ril.enable.dtm=0 \
	ro.ril.gprsclass=12 \
	ro.ril.hsdpa.category=10 \
	ro.ril.hsupa.category=6 \
	ro.ril.hsxpa=2 \
	ro.ril.def.agps.mode=2 \
	ro.ril.disable.power.collapse=1

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
	ro.telephony.default_network=0 \
	mobiledata.interfaces=gannet0,rmnet0,rmnet1,rmnet2 \
	ro.use_data_netmgrd=true

# WiFi
PRODUCT_PROPERTY_OVERRIDES += \
	wifi.interface=wlan0 \
	ro.tethering.kb_disconnect=1

# Display
PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=131072 \
	debug.sf.hw=1 \
	debug.composition.type=mdp \
	persist.hwc.mdpcomp.enable=true \
	debug.mdpcomp.maxlayer=3 \
	debug.mdpcomp.idletime=-1

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.media.use-awesome=true

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
	camera2.portability.force_api=1

# UMS
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.vold.umsdirtyratio=20

# Memory
PRODUCT_PROPERTY_OVERRIDES += \
	ro.config.low_ram=true \
	persist.sys.force_highendgfx=true \
	ro.sys.fw.bg_apps_limit=16 \
	ro.config.max_starting_bg=8 \
	config.disable_atlas=true

# This is needed for the usb workaround
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=charging

# Misc
PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.google.locationfeatures=1

# Disable strict mode
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.strictmode.visual=0 \
	persist.sys.strictmode.disable=1
