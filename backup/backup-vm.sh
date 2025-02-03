#!/bin/bash

today=$(date "+%w")

old=$(date +%Y-%m-%d -d "14 days ago")

dir="/mnt/usb/"

folder="$dir$(date +%Y-%m-%d)"

check_disk(){
  if [ ! $(df -h | grep /dev/sdd2) ]; then
    mount /dev/sdd2 /mnt/usb/
  fi
}

check_volume(){
  if [ -d "$dir" ]; then
    echo "2-Check mount volume OK..."
    mkdir $folder
  else
    echo "2-Mount volume"
    mount /dev/sdd2 $dir
  fi
}

remove_backup_old(){
  if [ -d "${dir}${old}"]; then
    rm -rf $dir$old
    echo "Folder old delete."
  fi
}

copy_files(){
  echo "Backup VM01 in progress..."
  cp -r /mnt/vm01/ $folder
  echo "Backup VM02 in progress..."
  cp -r /mnt/vm02/ $folder
  echo "Backup VM03 in progress..."
  cp -r /mnt/vm03/ $folder
  echo "Backup finished"
}

umount_disk(){
  umount /dev/sdd2 /mnt/usb/
}

if [ "$today" = "0" ]; then
  echo "Backup files in progress, wait...";
  check_disk
  check_volume
  remove_backup_old
  copy_files
  umount_disk
else
  echo "Today is not backup";
fi