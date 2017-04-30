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
adb push backup/$thebackup/CamScanner /sdcard/
adb push backup/$thebackup/Download /sdcard/
adb push backup/$thebackup/ListenAudiobookPlayer /sdcard/
adb push backup/$thebackup/TitaniumBackup /sdcard/
adb push backup/$thebackup/voix /sdcard/
adb push backup/$thebackup/WhatsApp/Media /sdcard/WhatsApp/Media
adb push backup/$thebackup/* /sdcard/