$(call inherit-product, device/samsung/d2vzw/full_d2vzw.mk)

# Release name
PRODUCT_RELEASE_NAME := d2vzw

# Inherit some common SLIM stuff.
$(call inherit-product, vendor/slim/config/cdma.mk)

# Inherit some common SLIM stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit device settings
$(call inherit-product, vendor/slim/config/common_sgs.mk)

#copy kernel and modules
PRODUCT_COPY_FILES += \
	device/samsung/d2vzw/prebuilt/boot.img:system/slimkernel/boot.img \
	device/samsung/d2vzw/prebuilt/kernel:kernel \
	device/samsung/d2vzw/prebuilt/system/lib/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
	device/samsung/d2vzw/prebuilt/system/lib/modules/qce40.ko:system/lib/modules/qce40.ko \
	device/samsung/d2vzw/prebuilt/system/lib/modules/spidev.ko:system/lib/modules/spidev.ko \
	device/samsung/d2vzw/prebuilt/system/lib/modules/qcrypto.ko:system/lib/modules/qcrypto.ko \
	device/samsung/d2vzw/prebuilt/system/lib/modules/qcedev.ko:system/lib/modules/qcedev.ko \
	device/samsung/d2vzw/prebuilt/system/lib/modules/vpnclient.ko:system/lib/modules/vpnclient.ko \
	device/samsung/d2vzw/prebuilt/system/lib/modules/gspca_main.ko:system/lib/modules/gpsca_main.ko \
	device/samsung/d2vzw/prebuilt/system/lib/modules/btlock.ko:system/lib/modules/btlock.ko \
	device/samsung/d2vzw/prebuilt/system/lib/modules/dhd.ko:system/lib/modules/dhd.ko \
	device/samsung/d2vzw/prebuilt/system/lib/modules/evbug.ko:system/lib/modules/evbug.ko \
	device/samsung/d2vzw/prebuilt/system/bin/thermald:system/bin/thermald \
	device/samsung/d2vzw/prebuilt/system/xbin/ffc:system/xbin/ffc \
	device/samsung/d2vzw/prebuilt/system/xbin/stocktherm:system/xbin/stocktherm

#copy 00check
PRODUCT_COPY_FILES += \
	vendor/slim/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check

#bootanimation
PRODUCT_COPY_FILES +=  \
    vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2vzw TARGET_DEVICE=d2vzw BUILD_FINGERPRINT="d2vzw-4.1.1 JRO03L eng.ar.20120829.000851 release-keys"
PRIVATE_BUILD_DESC="samsung/full_d2vzw/d2vzw:4.1.1/JRO03L/eng.ar.20120829.000851:userdebug/release-keys"

PRODUCT_NAME := slim_d2vzw
PRODUCT_DEVICE := d2vzw
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SCH-I535
PRODUCT_MANUFACTURER := Samsung
