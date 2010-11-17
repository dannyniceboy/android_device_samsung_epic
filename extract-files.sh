#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
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

DEVICE=SPH-D700

mkdir -p ../../../vendor/samsung/$DEVICE/proprietary

DIRS="
bin/gps
etc/dhcpcd
etc/wifi
lib/egl
lib/hw
media
firmware
"

for DIR in $DIRS; do
	mkdir -p ../../../vendor/samsung/$DEVICE/proprietary/$DIR
done

FILES="




etc/wifi/nvram_net.txt
etc/wifi/nvram_mfg.txt
etc/wifi/bcm4329_aps.bin
etc/wifi/bcm4329_mfg.bin
etc/wifi/bcm4329_sta.bin
etc/wifi/wifi.conf
etc/wifi/wpa_supplicant.conf
lib/libwibropath.so
lib/libwlservice.so
lib/libwldhcp.so
lib/libwifitest.so
lib/libwpa_client.so
bin/wpa_supplicant
bin/wpa_cli
bin/wlp2pservice
bin/btld
bin/BCM4329B1_002.002.023.0417.0435.hcd
bin/mfgloader
bin/dbus-daemon
bin/hciattach
bin/npsmobex
bin/wlservice

bin/dhcpcd
etc/dhcpcd/dhcpcd-hooks/01-test
etc/dhcpcd/dhcpcd-hooks/20-dns.conf
etc/dhcpcd/dhcpcd-hooks/95-configured
etc/dhcpcd/dhcpcd-run-hooks
etc/dhcpcd/dhcpcd.conf
	
firmware/CE147F00.bin
firmware/CE147F01.bin
firmware/CE147F02.bin
firmware/CE147F03.bin


	
lib/egl/libEGL_POWERVR_SGX540_120.so
lib/egl/libGLES_android.so
lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so
lib/egl/libGLESv2_POWERVR_SGX540_120.so
lib/libIMGegl.so
lib/libpvr2d.so
lib/libsrv_init.so
lib/libsrv_um.so
lib/libPVRScopeServices.so
lib/libglslcompiler.so
lib/libpvrANDROID_WSEGL.so
bin/pvrsrvinit

lib/hw/copybit.s5pc110.so
lib/hw/lights.s5pc110.so
lib/hw/gralloc.s5pc110.so
lib/hw/sensors.default.so 
	

lib/libarccamera.so
lib/libcamerafirmwarejni.so
lib/libcamera.so
lib/libseccameraadaptor.so
lib/libs3cjpeg.so 
lib/libseccamera.so

lib/libril.so
lib/libsec-ril40.so
lib/libsecril-client.so
bin/drexe
bin/rild
bin/rilclient-test
lib/libreference-ril.so



bin/gpsd/66ca3eb6.0
bin/gpsd/7651b327.0
bin/gpsd/803ca020.0
bin/gpsd/8c7fccef.0
bin/gpsd/c9dbfc2e.0
bin/gpsd/ddc328ff.0
bin/gpsd/ed62f4e3.0
bin/gpsd/f0b6e66f.0
bin/gpsd/glgps_samsungJupiter
etc/jupiter.xml
lib/libgps.so
lib/libsecgps.so

lib/libs263domxoc.so
lib/libs263eomxoc.so
lib/libs264domxoc.so
lib/libs264eomxoc.so
lib/libsaacdomxoc.so
lib/libsaaceomxoc.so
lib/libsac3domxoc.so
lib/libsamrdomxoc.so
lib/libsamreomxoc.so
lib/libsdiv3domxoc.so
lib/libsflacdomxoc.so
lib/libsmp3domxoc.so
lib/libsmp4fmocn.so
lib/libsmp4vdomxoc.so
lib/libsmp4veomxoc.so
lib/libsvc1domxoc.so
lib/libswmadomxoc.so
lib/libswmv7domxoc.so
lib/libswmv8domxoc.so

lib/lib_tvoutengine.so
lib/libtvout_jni.so
lib/libtvoutfimc.so
lib/libtvouthdmi.so
lib/libtvoutservice.so
lib/libtvout.so
lib/libs3cjpeg.so
bin/tvoutserver


bin/pppd_runner
bin/pppd
etc/init.cdma-pppd
etc/init.gprs-pppd
etc/ppp/chap-secrets
etc/ppp/ip-up
etc/ppp/ip-down
etc/ppp/ip-up-vpn
etc/ppp/pap-secrets
etc/ppp/options

lib/libsensor_yamaha.so
lib/libsensor_yamaha_test.so
lib/libms3c_yamaha.so
bin/sensorserver_yamaha
bin/sensorcalibutil_yamaha
bin/sensorstatutil_yamaha

lib/libSECmWiMAXcAPI.so
lib/libWiMAXLineTest.so
lib/libWiMAXNative.so
lib/libWiMAXNativeODB.so
lib/libwimaxne.so
lib/libwimaxwtm.so
etc/wimax_boot.bin
etc/wimaxfw.bin
bin/udhcpd
etc/wimaxloader.bin 
	

bin/immvbsd
bin/logwrapper
bin/immvibed
lib/libhardware_legacy.so
bin/killmediaserver
lib/libhardware.so
bin/vold
bin/notified_event
lib/libnetutils.so

bin/playlpm
bin/charging_mode
media/battery_charging_5.qmg
media/battery_charging_10.qmg
media/battery_charging_15.qmg
media/battery_charging_20.qmg
media/battery_charging_25.qmg
media/battery_charging_30.qmg
media/battery_charging_35.qmg
media/battery_charging_40.qmg
media/battery_charging_45.qmg
media/battery_charging_50.qmg
media/battery_charging_55.qmg
media/battery_charging_60.qmg
media/battery_charging_65.qmg
media/battery_charging_70.qmg
media/battery_charging_75.qmg
media/battery_charging_80.qmg
media/battery_charging_85.qmg
media/battery_charging_90.qmg
media/battery_charging_95.qmg
media/battery_charging_100.qmg
media/chargingwarning.qmg
media/Disconnected.qmg
"

for FILE in $FILES; do
	adb pull system/$FILE ../../../vendor/samsung/$DEVICE/proprietary/$FILE
done

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g > ../../../vendor/samsung/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
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

# This file is generated by device/samsung/__DEVICE__/extract-files.sh

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES += \\
    vendor/samsung/__DEVICE__/proprietary/lib/libgps.so:obj/lib/libgps.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libsecgps.so:obj/lib/libsecgps.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libcamera.so:obj/lib/libcamera.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libs3cjpeg.so:system/lib/libs3cjpeg.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libtvout.so:obj/lib/libtvout.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libsecril-client.so:obj/lib/libsecril-client.so 



#
# WiFi & Bluetooth
#
PRODUCT_COPY_FILES += \\
    vendor/samsung/__DEVICE__/proprietary/etc/wifi/nvram_net.txt:system/etc/wifi/nvram_net.txt \\
    vendor/samsung/__DEVICE__/proprietary/etc/wifi/nvram_mfg.txt:system/etc/wifi/nvram_mfg.txt \\
    vendor/samsung/__DEVICE__/proprietary/etc/wifi/bcm4329_aps.bin:system/etc/wifi/bcm4329_aps.bin \\
    vendor/samsung/__DEVICE__/proprietary/etc/wifi/bcm4329_mfg.bin:system/etc/wifi/bcm4329_mfg.bin \\
    vendor/samsung/__DEVICE__/proprietary/etc/wifi/bcm4329_sta.bin:system/etc/wifi/bcm4329_sta.bin \\
    vendor/samsung/__DEVICE__/proprietary/etc/wifi/wifi.conf:system/etc/wifi/wifi.conf \\
    vendor/samsung/__DEVICE__/proprietary/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \\
    vendor/samsung/__DEVICE__/proprietary/lib/libwibropath.so:system/lib/libwibropath.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libwlservice.so:system/lib/libwlservice.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libwldhcp.so:system/lib/libwldhcp.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libwifitest.so:system/lib/libwifitest.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libwpa_client.so:system/lib/libwpa_client.so \\
    vendor/samsung/__DEVICE__/proprietary/bin/wpa_supplicant:system/bin/wpa_supplicant \\
	vendor/samsung/__DEVICE__/proprietary/bin/wpa_cli:system/bin/wpa_cli \\
	vendor/samsung/__DEVICE__/proprietary/bin/wlp2pservice:system/bin/wlp2pservice \\
	vendor/samsung/__DEVICE__/proprietary/bin/btld:system/bin/btld \\
	vendor/samsung/__DEVICE__/proprietary/bin/BCM4329B1_002.002.023.0417.0435.hcd:system/bin/BCM4329B1_002.002.023.0417.0435.hcd \\
	vendor/samsung/__DEVICE__/proprietary/bin/mfgloader:system/bin/mfgloader \\
	vendor/samsung/__DEVICE__/proprietary/bin/dbus-daemon:system/bin/dbus-daemon \\
	vendor/samsung/__DEVICE__/proprietary/bin/hciattach:system/bin/hciattach \\
	vendor/samsung/__DEVICE__/proprietary/bin/npsmobex:system/bin/npsmobex \\
    vendor/samsung/__DEVICE__/proprietary/bin/wlservice:system/bin/wlservice

#
# DHCPCD
#
PRODUCT_COPY_FILES += \\
	vendor/samsung/__DEVICE__/proprietary/bin/dhcpcd:system/bin/dhcpcd \\
	vendor/samsung/__DEVICE__/proprietary/etc/dhcpcd/dhcpcd-hooks/01-test:system/etc/dhcpcd/dhcpcd-hooks/01-test \\
	vendor/samsung/__DEVICE__/proprietary/etc/dhcpcd/dhcpcd-hooks/20-dns.conf:system/etc/dhcpcd/dhcpcd-hooks/20-dns.conf \\
	vendor/samsung/__DEVICE__/proprietary/etc/dhcpcd/dhcpcd-hooks/95-configured:system/etc/dhcpcd/dhcpcd-hooks/95-configured \\
	vendor/samsung/__DEVICE__/proprietary/etc/dhcpcd/dhcpcd-run-hooks:system/etc/dhcpcd/dhcpcd-run-hooks \\
	vendor/samsung/__DEVICE__/proprietary/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf
	
#
# Firmware files
#
PRODUCT_COPY_FILES += \\
    vendor/samsung/__DEVICE__/proprietary/firmware/CE147F00.bin:system/firmware/CE147F00.bin \\
    vendor/samsung/__DEVICE__/proprietary/firmware/CE147F01.bin:system/firmware/CE147F01.bin \\
    vendor/samsung/__DEVICE__/proprietary/firmware/CE147F02.bin:system/firmware/CE147F02.bin \\
    vendor/samsung/__DEVICE__/proprietary/firmware/CE147F03.bin:system/firmware/CE147F03.bin


	
#
# Display (3D)
#
PRODUCT_COPY_FILES += \\
    vendor/samsung/__DEVICE__/proprietary/lib/egl/libEGL_POWERVR_SGX540_120.so:system/lib/egl/libEGL_POWERVR_SGX540_120.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so:system/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/egl/libGLESv2_POWERVR_SGX540_120.so:system/lib/egl/libGLESv2_POWERVR_SGX540_120.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libIMGegl.so:system/lib/libIMGegl.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libpvr2d.so:system/lib/libpvr2d.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libsrv_init.so:system/lib/libsrv_init.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libsrv_um.so:system/lib/libsrv_um.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libPVRScopeServices.so:system/lib/libPVRScopeServices.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libglslcompiler.so:system/lib/libglslcompiler.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libpvrANDROID_WSEGL.so:system/lib/libpvrANDROID_WSEGL.so \\
    vendor/samsung/__DEVICE__/proprietary/bin/pvrsrvinit:system/bin/pvrsrvinit
#
# Sensors, Lights etc
#
PRODUCT_COPY_FILES += \\
    vendor/samsung/__DEVICE__/proprietary/lib/hw/copybit.s5pc110.so:system/lib/hw/copybit.s5pc110.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/hw/lights.s5pc110.so:system/lib/hw/lights.s5pc110.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/hw/gralloc.s5pc110.so:system/lib/hw/gralloc.s5pc110.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/hw/sensors.default.so:system/lib/hw/sensors.default.so 
	
#
# Camera
#
PRODUCT_COPY_FILES += \\
    vendor/samsung/__DEVICE__/proprietary/lib/libarccamera.so:system/lib/libarccamera.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libcamerafirmwarejni.so:system/lib/libcamerafirmwarejni.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libcamera.so:system/lib/libcamera.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libseccameraadaptor.so:system/lib/libseccameraadaptor.so \\
	vendor/samsung/__DEVICE__/proprietary/lib/libs3cjpeg.so:system/lib/libs3cjpeg.so \\ 
    vendor/samsung/__DEVICE__/proprietary/lib/libseccamera.so:system/lib/libseccamera.so

#
# RIL
#
PRODUCT_COPY_FILES += \\
    vendor/samsung/__DEVICE__/proprietary/lib/libril.so:system/lib/libril.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libsec-ril40.so:system/lib/libsec-ril40.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libsecril-client.so:system/lib/libsecril-client.so \\
    vendor/samsung/__DEVICE__/proprietary/bin/drexe:system/bin/drexe \\
    vendor/samsung/__DEVICE__/proprietary/bin/rild:system/bin/rild \\
    vendor/samsung/__DEVICE__/proprietary/bin/rilclient-test:system/bin/rilclient-test \\
	vendor/samsung/__DEVICE__/proprietary/lib/libreference-ril.so:system/lib/libreference-ril.so



#
# GPS
#
PRODUCT_COPY_FILES += \\
    vendor/samsung/__DEVICE__/proprietary/bin/gpsd/66ca3eb6.0:system/bin/gpsd/66ca3eb6.0 \\
    vendor/samsung/__DEVICE__/proprietary/bin/gpsd/7651b327.0:system/bin/gpsd/7651b327.0 \\
    vendor/samsung/__DEVICE__/proprietary/bin/gpsd/803ca020.0:system/bin/gpsd/803ca020.0 \\
    vendor/samsung/__DEVICE__/proprietary/bin/gpsd/8c7fccef.0:system/bin/gpsd/8c7fccef.0 \\
    vendor/samsung/__DEVICE__/proprietary/bin/gpsd/c9dbfc2e.0:system/bin/gpsd/c9dbfc2e.0 \\
    vendor/samsung/__DEVICE__/proprietary/bin/gpsd/ddc328ff.0:system/bin/gpsd/ddc328ff.0 \\
    vendor/samsung/__DEVICE__/proprietary/bin/gpsd/ed62f4e3.0:system/bin/gpsd/ed62f4e3.0 \\
    vendor/samsung/__DEVICE__/proprietary/bin/gpsd/f0b6e66f.0:system/bin/gpsd/f0b6e66f.0 \\
    vendor/samsung/__DEVICE__/proprietary/bin/gpsd/glgps_samsungJupiter:system/bin/gpsd/glgps_samsungJupiter \\
    vendor/samsung/__DEVICE__/proprietary/etc/jupiter.xml:system/etc/jupiter.xml \\
    vendor/samsung/__DEVICE__/proprietary/lib/libgps.so:system/lib/libgps.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libsecgps.so:system/lib/libsecgps.so

#
# OMX
#
PRODUCT_COPY_FILES += \\
    vendor/samsung/__DEVICE__/proprietary/lib/libs263domxoc.so:system/lib/libs263domxoc.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libs263eomxoc.so:system/lib/libs263eomxoc.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libs264domxoc.so:system/lib/libs264domxoc.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libs264eomxoc.so:system/lib/libs264eomxoc.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libsaacdomxoc.so:system/lib/libsaacdomxoc.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libsaaceomxoc.so:system/lib/libsaaceomxoc.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libsac3domxoc.so:system/lib/libsac3domxoc.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libsamrdomxoc.so:system/lib/libsamrdomxoc.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libsamreomxoc.so:system/lib/libsamreomxoc.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libsdiv3domxoc.so:system/lib/libsdiv3domxoc.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libsflacdomxoc.so:system/lib/libsflacdomxoc.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libsmp3domxoc.so:system/lib/libsmp3domxoc.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libsmp4fmocn.so:system/lib/libsmp4fmocn.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libsmp4vdomxoc.so:system/lib/libsmp4vdomxoc.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libsmp4veomxoc.so:system/lib/libsmp4veomxoc.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libsvc1domxoc.so:system/lib/libsvc1domxoc.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libswmadomxoc.so:system/lib/libswmadomxoc.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libswmv7domxoc.so:system/lib/libswmv7domxoc.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libswmv8domxoc.so:system/lib/libswmv8domxoc.so

#
# TV-Out
#
PRODUCT_COPY_FILES += \\
    vendor/samsung/__DEVICE__/proprietary/lib/lib_tvoutengine.so:system/lib/lib_tvoutengine.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libtvout_jni.so:system/lib/libtvout_jni.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libtvoutfimc.so:system/lib/libtvoutfimc.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libtvouthdmi.so:system/lib/libtvouthdmi.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libtvoutservice.so:system/lib/libtvoutservice.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libtvout.so:system/lib/libtvout.so \\
    vendor/samsung/__DEVICE__/proprietary/lib/libs3cjpeg.so:system/lib/libs3cjpeg.so \\
    vendor/samsung/__DEVICE__/proprietary/bin/tvoutserver:system/bin/tvoutserver

#
# PPP
#
PRODUCT_COPY_FILES += \\
    vendor/samsung/__DEVICE__/proprietary/bin/pppd_runner:system/bin/pppd_runner \\
    vendor/samsung/__DEVICE__/proprietary/bin/pppd:system/bin/pppd \\
    vendor/samsung/__DEVICE__/proprietary/etc/init.cdma-pppd:system/etc/init.cdma-pppd \\
    vendor/samsung/__DEVICE__/proprietary/etc/init.gprs-pppd:system/etc/init.gprs-pppd \\
    vendor/samsung/__DEVICE__/proprietary/etc/ppp/chap-secrets:system/etc/ppp/chap-secrets \\
    vendor/samsung/__DEVICE__/proprietary/etc/ppp/ip-up:system/etc/ppp/ip-up \\
    vendor/samsung/__DEVICE__/proprietary/etc/ppp/ip-down:system/etc/ppp/ip-down \\
    vendor/samsung/__DEVICE__/proprietary/etc/ppp/ip-up-vpn:system/etc/ppp/ip-up-vpn \\
    vendor/samsung/__DEVICE__/proprietary/etc/ppp/pap-secrets:system/etc/ppp/pap-secrets \\
    vendor/samsung/__DEVICE__/proprietary/etc/ppp/options:system/etc/ppp/options

#
#Sensors
#
PRODUCT_COPY_FILES += \\
	vendor/samsung/__DEVICE__/proprietary/lib/libsensor_yamaha.so:system/lib/libsensor_yamaha.so \\
	vendor/samsung/__DEVICE__/proprietary/lib/libsensor_yamaha_test.so:system/lib/libsensor_yamaha_test.so \\
	vendor/samsung/__DEVICE__/proprietary/lib/libms3c_yamaha.so:system/lib/libms3c_yamaha.so \\
	vendor/samsung/__DEVICE__/proprietary/bin/sensorserver_yamaha:system/bin/sensorserver_yamaha \\
	vendor/samsung/__DEVICE__/proprietary/bin/sensorcalibutil_yamaha:system/bin/sensorcalibutil_yamaha \\
	vendor/samsung/__DEVICE__/proprietary/bin/sensorstatutil_yamaha:system/bin/sensorstatutil_yamaha

#
# WIMAX FOR VICTORY!
#
PRODUCT_COPY_FILES += \\
	vendor/samsung/__DEVICE__/proprietary/lib/libSECmWiMAXcAPI.so:system/lib/libSECmWiMAXcAPI.so \\
	vendor/samsung/__DEVICE__/proprietary/lib/libWiMAXLineTest.so:system/lib/libWiMAXLineTest.so \\
	vendor/samsung/__DEVICE__/proprietary/lib/libWiMAXNative.so:system/lib/libWiMAXNative.so \\
	vendor/samsung/__DEVICE__/proprietary/lib/libWiMAXNativeODB.so:system/lib/libWiMAXNativeODB.so \\
	vendor/samsung/__DEVICE__/proprietary/lib/libwimaxne.so:system/lib/libwimaxne.so \\
	vendor/samsung/__DEVICE__/proprietary/lib/libwimaxwtm.so:system/lib/libwimaxwtm.so \\
	vendor/samsung/__DEVICE__/proprietary/etc/wimax_boot.bin:system/etc/wimax_boot.bin \\
	vendor/samsung/__DEVICE__/proprietary/etc/wimaxfw.bin:system/etc/wimaxfw.bin \\
	vendor/samsung/__DEVICE__/proprietary/bin/udhcpd:system/bin/udhcpd \\
	vendor/samsung/__DEVICE__/proprietary/etc/wimaxloader.bin:system/etc/wimaxloader.bin 
	
#
# test binary blobs
#
PRODUCT_COPY_FILES += \\
	vendor/samsung/__DEVICE__/proprietary/bin/immvbsd:system/bin/immvbsd \\
	vendor/samsung/__DEVICE__/proprietary/bin/logwrapper:system/bin/logwrapper \\
	vendor/samsung/__DEVICE__/proprietary/bin/immvibed:system/bin/immvibed \\
	vendor/samsung/__DEVICE__/proprietary/lib/libhardware_legacy.so:system/lib/libhardware_legacy.so \\
	vendor/samsung/__DEVICE__/proprietary/bin/killmediaserver:system/bin/killmediaserver \\
	vendor/samsung/__DEVICE__/proprietary/lib/libhardware.so:system/lib/libhardware.so \\
	vendor/samsung/__DEVICE__/proprietary/bin/vold:system/bin/vold \\
    vendor/samsung/__DEVICE__/proprietary/bin/notified_event:system/bin/notified_event \\
	vendor/samsung/__DEVICE__/proprietary/lib/libnetutils.so:system/lib/libnetutils.so

#
# Files for battery charging screen
#
	
PRODUCT_COPY_FILES += \\
    vendor/samsung/__DEVICE__/proprietary/bin/playlpm:system/bin/playlpm \\
    vendor/samsung/__DEVICE__/proprietary/bin/charging_mode:system/bin/charging_mode \\
    vendor/samsung/__DEVICE__/proprietary/media/battery_charging_5.qmg:system/media/battery_charging_5.qmg \\
    vendor/samsung/__DEVICE__/proprietary/media/battery_charging_10.qmg:system/media/battery_charging_10.qmg \\
    vendor/samsung/__DEVICE__/proprietary/media/battery_charging_15.qmg:system/media/battery_charging_15.qmg \\
    vendor/samsung/__DEVICE__/proprietary/media/battery_charging_20.qmg:system/media/battery_charging_20.qmg \\
    vendor/samsung/__DEVICE__/proprietary/media/battery_charging_25.qmg:system/media/battery_charging_25.qmg \\
    vendor/samsung/__DEVICE__/proprietary/media/battery_charging_30.qmg:system/media/battery_charging_30.qmg \\
    vendor/samsung/__DEVICE__/proprietary/media/battery_charging_35.qmg:system/media/battery_charging_35.qmg \\
    vendor/samsung/__DEVICE__/proprietary/media/battery_charging_40.qmg:system/media/battery_charging_40.qmg \\
    vendor/samsung/__DEVICE__/proprietary/media/battery_charging_45.qmg:system/media/battery_charging_45.qmg \\
    vendor/samsung/__DEVICE__/proprietary/media/battery_charging_50.qmg:system/media/battery_charging_50.qmg \\
    vendor/samsung/__DEVICE__/proprietary/media/battery_charging_55.qmg:system/media/battery_charging_55.qmg \\
    vendor/samsung/__DEVICE__/proprietary/media/battery_charging_60.qmg:system/media/battery_charging_60.qmg \\
    vendor/samsung/__DEVICE__/proprietary/media/battery_charging_65.qmg:system/media/battery_charging_65.qmg \\
    vendor/samsung/__DEVICE__/proprietary/media/battery_charging_70.qmg:system/media/battery_charging_70.qmg \\
    vendor/samsung/__DEVICE__/proprietary/media/battery_charging_75.qmg:system/media/battery_charging_75.qmg \\
    vendor/samsung/__DEVICE__/proprietary/media/battery_charging_80.qmg:system/media/battery_charging_80.qmg \\
    vendor/samsung/__DEVICE__/proprietary/media/battery_charging_85.qmg:system/media/battery_charging_85.qmg \\
    vendor/samsung/__DEVICE__/proprietary/media/battery_charging_90.qmg:system/media/battery_charging_90.qmg \\
    vendor/samsung/__DEVICE__/proprietary/media/battery_charging_95.qmg:system/media/battery_charging_95.qmg \\
    vendor/samsung/__DEVICE__/proprietary/media/battery_charging_100.qmg:system/media/battery_charging_100.qmg \\
    vendor/samsung/__DEVICE__/proprietary/media/chargingwarning.qmg:system/media/chargingwarning.qmg \\
    vendor/samsung/__DEVICE__/proprietary/media/Disconnected.qmg:system/media/Disconnected.qmg
EOF

./setup-makefiles.sh
