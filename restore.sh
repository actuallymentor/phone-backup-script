#! /bin/bash

# Ask user for backup folder selection
echo -e "\nWhich backup would you like to restore?\n"
ls -lh backup/
read -p "Backup timestamp: " thebackup

# Confirm
echo -e "\nThis selection would restore the following folders:\n"
ls -lah backup/$thebackup
echo -e "\nTo the following devices:\n"
adb devices
echo -e "\n"
read -p "Press any key to start data restoration..."

# Push files to device
echo -e "Restoring CamScanner data"
adb push backup/$thebackup/CamScanner /sdcard/
echo -e "Restoring Download data"
adb push backup/$thebackup/Download /sdcard/
echo -e "Restoring Audiobook Player data"
adb push backup/$thebackup/ListenAudiobookPlayer /sdcard/
echo -e "Restoring TB data"
adb push backup/$thebackup/TitaniumBackup /sdcard/
echo -e "Restoring phone recording data"
adb push backup/$thebackup/voix /sdcard/
echo -e "Restoring WhatsApp Media data"
adb push backup/$thebackup/WhatsApp/Media /sdcard/WhatsApp/Media/