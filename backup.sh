#! /bin/bash
now=$(date +%s)
backuppath=backup/$now
mkdir -p $backuppath/TitaniumBackup

# Copy relevant Titanium Backup files
# The adb shell command generates a list of files based on the wildcard, tr trims annoying break data, xargs calls a adb pull for every file
# See http://stackoverflow.com/questions/11074671/adb-pull-multiple-files
echo -e "\nBacking up TB app backups"
# Why? Has unrecoverable data
adb shell ls /sdcard/TitaniumBackup/co.touchlab.android.onesecondeveryday* | tr '\r' ' ' | xargs -I % -n1 adb pull % $backuppath/TitaniumBackup
# Why? Has unrecoverable data
adb shell ls /sdcard/TitaniumBackup/com.android.calllogbackup* | tr '\r' ' ' | xargs -I % -n1 adb pull % $backuppath/TitaniumBackup
# Why? Has unrecoverable data
adb shell ls /sdcard/TitaniumBackup/com.google.android.apps.authenticator2* | tr '\r' ' ' | xargs -I % -n1 adb pull % $backuppath/TitaniumBackup
# Why? Has unrecoverable data
adb shell ls /sdcard/TitaniumBackup/com.mycelium.wallet* | tr '\r' ' ' | xargs -I % -n1 adb pull % $backuppath/TitaniumBackup
# Why? Inconvenient to love wifi database
adb shell ls /sdcard/TitaniumBackup/com.oneplus.wifiapsettings* | tr '\r' ' ' | xargs -I % -n1 adb pull % $backuppath/TitaniumBackup
# Why? Has unrecoverable data
adb shell ls /sdcard/TitaniumBackup/com.skvalex.callrecorder* | tr '\r' ' ' | xargs -I % -n1 adb pull % $backuppath/TitaniumBackup
# Why? Inconvenient to set up my light preferences from scratch
adb shell ls /sdcard/TitaniumBackup/com.vito.lux* | tr '\r' ' ' | xargs -I % -n1 adb pull % $backuppath/TitaniumBackup
# Why? Has unrecoverable data
adb shell ls /sdcard/TitaniumBackup/com.whatsapp* | tr '\r' ' ' | xargs -I % -n1 adb pull % $backuppath/TitaniumBackup
# Why? Inconvenient to re-import openvpn settings
adb shell ls /sdcard/TitaniumBackup/de.blinkt.openvpn* | tr '\r' ' ' | xargs -I % -n1 adb pull % $backuppath/TitaniumBackup
# Why? Not available in app store
adb shell ls /sdcard/TitaniumBackup/org.adaway* | tr '\r' ' ' | xargs -I % -n1 adb pull % $backuppath/TitaniumBackup
# Why? Not available in app store
adb shell ls /sdcard/TitaniumBackup/org.exobel.routerkeygen* | tr '\r' ' ' | xargs -I % -n1 adb pull % $backuppath/TitaniumBackup
# Why? Has unrecoverable data
adb shell ls /sdcard/TitaniumBackup/com.studymode.cram* | tr '\r' ' ' | xargs -I % -n1 adb pull % $backuppath/TitaniumBackup
# Why? Has unrecoverable data
adb shell ls /sdcard/TitaniumBackup/com.bambuna.podcastaddict* | tr '\r' ' ' | xargs -I % -n1 adb pull % $backuppath/TitaniumBackup
# Why? Has unrecoverable data
adb shell ls /sdcard/TitaniumBackup/com.isaiasmatewos.texpand* | tr '\r' ' ' | xargs -I % -n1 adb pull % $backuppath/TitaniumBackup

# Back up system data
echo -e "\nBacking up TB system backups"
# Why? Has unrecoverable data
adb shell ls /sdcard/TitaniumBackup/com.keramidas.virtual* | tr '\r' ' ' | xargs -I % -n1 adb pull % $backuppath/TitaniumBackup

# Copy camscanner scans
echo -e "\nBacking up CamScanner data"
adb pull /sdcard/CamScanner/ $backuppath

# Copy download folder
echo -e "\nBacking up Downloads folder"
adb pull /sdcard/Download/ $backuppath

# Move gifs int o a gif folder
echo -e "Structuring Gifs, with a hard G"
mkdir -p $backuppath/Download/gifs
mv $backuppath/Download/*.gif $backuppath/Download/gifs/

# Copy audiobook reader data
echo -e "\nBacking up Audiobook Player data"
adb pull /sdcard/ListenAudiobookPlayer/ $backuppath

# Copy whatsapp data
echo -e "\nBacking up whatsapp chat and media data"
adb pull /sdcard/WhatsApp/ $backuppath
# Copy phone recording data
echo -e "\nBacking up recorded phone calls"
adb pull /sdcard/voix/ $backuppath