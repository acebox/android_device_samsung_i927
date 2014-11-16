#
# This file is the build configuration for a full Android
# build for sapphire hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).

LOCAL_PATH := device/samsung/i927

# Set true if you want .odex files
DISABLE_DEXPREOPT := false

# HAL
PRODUCT_PACKAGES += \
    sensors.n1 \
    lights.n1 \
    gps.tegra \
    camera.tegra \
    gralloc.tegra \
    hwcomposer.tegra \
    audio.primary.n1 \
    audio_policy.n1 \
    audio.a2dp.default \
    sec_touchscreen.kcm

# Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

# Filesystem management tools
PRODUCT_PACKAGES += \
    static_busybox \
    make_ext4fs \
    setup_fs

# Other Packages
#   Camera \
PRODUCT_PACKAGES += \
    libv8 \
	libtinyalsa \
    com.android.future.usb.accessory \
    libOmxCore \
    libOmxVidEnc \
    dexpreopt \
    SamsungServiceMode \
    librs_jni

# INIT-scripts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/root/lpm.rc:root/lpm.rc \
    $(LOCAL_PATH)/root/init.n1.rc:root/init.n1.rc \
    $(LOCAL_PATH)/root/init.n1.usb.rc:root/init.n1.usb.rc \
    $(LOCAL_PATH)/root/ueventd.n1.rc:root/ueventd.n1.rc

# Prebuilt modules
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/ua_loader:root/sbin/ua_loader \
    $(LOCAL_PATH)/prebuilt/cbd:root/sbin/cbd

# Vold and Storage
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/vold.fstab:system/etc/vold.fstab

# Wifi, BT
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/configs/sirfgps.conf:system/etc/sirfgps.conf

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf

# OMX
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/somxreg.conf:system/etc/somxreg.conf

# Camera
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nvcamera.conf:system/etc/nvcamera.conf

# Shell and busybox
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/bashrc:system/etc/bash/bashrc \
    $(LOCAL_PATH)/configs/mkshrc:system/etc/mkshrc \
    $(LOCAL_PATH)/configs/busybox.fstab:system/etc/fstab

# Keylayout
#    $(LOCAL_PATH)/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    $(LOCAL_PATH)/usr/keylayout/Bluetooth_00_06_66_42.kl:system/usr/keylayout/Bluetooth_00_06_66_42.kl \
    $(LOCAL_PATH)/usr/keylayout/STMPE_keypad.kl:system/usr/keylayout/STMPE_keypad.kl \
    $(LOCAL_PATH)/usr/keylayout/sec_jack.kl:system/usr/keylayout/sec_jack.kl \
    $(LOCAL_PATH)/usr/keylayout/sec_key.kl:system/usr/keylayout/sec_key.kl \
    $(LOCAL_PATH)/usr/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl \
    $(LOCAL_PATH)/usr/keylayout/sii9234_rcp.kl:system/usr/keylayout/sii9234_rcp.kl \
    $(LOCAL_PATH)/usr/keylayout/Vendor_04e8_Product_7021.kl:system/usr/keylayout/Vendor_04e8_Product_7021.kl \
    $(LOCAL_PATH)/usr/keylayout/Vendor_05ac_Product_0239.kl:system/usr/keylayout/Vendor_05ac_Product_0239.kl \
    $(LOCAL_PATH)/usr/keylayout/Vendor_22b8_Product_093d.kl:system/usr/keylayout/Vendor_22b8_Product_093d.kl \
    $(LOCAL_PATH)/usr/keylayout/Vendor_044f_Product_d007.kl:system/usr/keylayout/Vendor_044f_Product_d007.kl \
    $(LOCAL_PATH)/usr/keylayout/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_028e.kl \
    $(LOCAL_PATH)/usr/keylayout/Vendor_045e_Product_0719.kl:system/usr/keylayout/Vendor_045e_Product_0719.kl \
    $(LOCAL_PATH)/usr/keylayout/Vendor_046d_Product_c21d.kl:system/usr/keylayout/Vendor_046d_Product_c21d.kl \
    $(LOCAL_PATH)/usr/keylayout/Vendor_046d_Product_c21f.kl:system/usr/keylayout/Vendor_046d_Product_c21f.kl \
    $(LOCAL_PATH)/usr/keylayout/Vendor_046d_Product_c216.kl:system/usr/keylayout/Vendor_046d_Product_c216.kl \
    $(LOCAL_PATH)/usr/keylayout/Vendor_046d_Product_c294.kl:system/usr/keylayout/Vendor_046d_Product_c294.kl \
    $(LOCAL_PATH)/usr/keylayout/Vendor_046d_Product_c299.kl:system/usr/keylayout/Vendor_046d_Product_c299.kl \
    $(LOCAL_PATH)/usr/keylayout/Vendor_046d_Product_c532.kl:system/usr/keylayout/Vendor_046d_Product_c532.kl \
    $(LOCAL_PATH)/usr/keylayout/Vendor_054c_Product_0268.kl:system/usr/keylayout/Vendor_054c_Product_0268.kl \
    $(LOCAL_PATH)/usr/keylayout/Vendor_057e_Product_0306.kl:system/usr/keylayout/Vendor_057e_Product_0306.kl \
    $(LOCAL_PATH)/usr/keylayout/Vendor_2378_Product_100a.kl:system/usr/keylayout/Vendor_2378_Product_100a.kl \

# Keychars
#    $(LOCAL_PATH)/usr/keychars/Generic.kcm:system/usr/keychars/Generic.kcm \
#    $(LOCAL_PATH)/usr/keychars/qwerty2.kcm:system/usr/keychars/qwerty2.kcm \
#    $(LOCAL_PATH)/usr/keychars/qwerty.kcm:system/usr/keychars/qwerty.kcm \
#    $(LOCAL_PATH)/usr/keychars/Virtual.kcm:system/usr/keychars/Virtual.kcm \
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/usr/keychars/sec_jack.kcm:system/usr/keychars/sec_jack.kcm \
    $(LOCAL_PATH)/usr/keychars/sec_key.kcm:system/usr/keychars/sec_key.kcm \
    $(LOCAL_PATH)/usr/keychars/STMPE_keypad.kcm:system/usr/keychars/STMPE_keypad.kcm \
    $(LOCAL_PATH)/usr/keychars/sec_touchkey.kcm:system/usr/keychars/sec_touchkey.kcm

# IDC files
#    $(LOCAL_PATH)/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc \
#    $(LOCAL_PATH)/usr/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/usr/idc/sec_touchscreen.idc:system/usr/idc/sec_touchscreen.idc

# ace - added android.hardware.bluetooth.xml
#    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
# Install the features available on this device.
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml

# Feature live wallpaper
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Overlay to set device specific parameters
DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# Build Property Overrides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.android.dateformat=yyyy-MM-dd \
	ro.com.google.clientidbase=android-samsung

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# See comment at the top of this file. This is where the other
# half of the device-specific product definition file takes care
# of the aspects that require proprietary drivers that aren't
# commonly available

$(call inherit-product-if-exists, vendor/samsung/i927/i927-vendor.mk)
