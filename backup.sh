#! /bin/bash
now=$(date)
mkdir backups
mkdir backups/TB
# Copy camscanner scans
adb pull /sdcard/CamScanner/ backups
# Copy download folder
adb pull /sdcard/Download/ backups
# Copy audiobook reader data
adb pull /sdcard/ListenAudiobookPlayer/ backups
# Copy relevant Titanium Backup files
adb pull /sdcard/TitaniumBackup/co.touchlab.android.onesecondeveryday-* backups/$now/TB
adb pull /sdcard/TitaniumBackup/com.android.calllogbackup* backups/$now/TB
adb pull /sdcard/TitaniumBackup/com.google.android.apps.authenticator2* backups/$now/TB
adb pull /sdcard/TitaniumBackup/com.mycelium.wallet* backups/$now/TB
adb pull /sdcard/TitaniumBackup/com.oneplus.wifiapsettings* backups/$now/TB
adb pull /sdcard/TitaniumBackup/com.skvalex.callrecorder* backups/$now/TB
adb pull /sdcard/TitaniumBackup/com.vito.lux* backups/$now/TB
adb pull /sdcard/TitaniumBackup/com.whatsapp* backups/$now/TB
adb pull /sdcard/TitaniumBackup/de.blinkt.openvpn* backups/$now/TB
adb pull /sdcard/TitaniumBackup/org.adaway* backups/$now/TB
adb pull /sdcard/TitaniumBackup/org.exobel.routerkeygen* backups/$now/TB
# Copy whatsapp data
adb pull /sdcard/WhatsApp/ backups
# Copy phone recording data
adb pull /sdcard/voix/ backups