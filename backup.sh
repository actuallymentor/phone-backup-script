#! /bin/bash
mkdir backups
mkdir backups/TB
# Copy camscanner scans
adb pull /sdcard/CamScanner/ backups
# Copy download folder
adb pull /sdcard/Download/ backups
# Copy audiobook reader data
adb pull /sdcard/ListenAudiobookPlayer/ backups
# Copy relevant Titanium Backup files
adb pull /sdcard/TitaniumBackup/co.touchlab.android.onesecondeveryday-* backups/TB
adb pull /sdcard/TitaniumBackup/com.android.calllogbackup* backups/TB
adb pull /sdcard/TitaniumBackup/com.google.android.apps.authenticator2* backups/TB
adb pull /sdcard/TitaniumBackup/com.mycelium.wallet* backups/TB
adb pull /sdcard/TitaniumBackup/com.oneplus.wifiapsettings* backups/TB
adb pull /sdcard/TitaniumBackup/com.skvalex.callrecorder* backups/TB
adb pull /sdcard/TitaniumBackup/com.vito.lux* backups/TB
adb pull /sdcard/TitaniumBackup/com.whatsapp* backups/TB
adb pull /sdcard/TitaniumBackup/de.blinkt.openvpn* backups/TB
adb pull /sdcard/TitaniumBackup/org.adaway* backups/TB
adb pull /sdcard/TitaniumBackup/org.exobel.routerkeygen* backups/TB
# Copy whatsapp data
adb pull /sdcard/WhatsApp/ backups
# Copy phone recording data
adb pull /sdcard/voix/ backups