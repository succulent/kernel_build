#!/bin/bash

#For internal
#cp $CM_ROOT/device/bn/acclaim/boot/flashing_boot_emmc.img $TARGET_DIR

mkbootimg --kernel zImage --cmdline 'console=/dev/null' --base 0x80080000 --pagesize 4096 --ramdisk ramdisk.cpio.gz --output boot_new.img

#For internal
#cat flashing_boot_emmc.img boot_new.img > boot.img
mv boot_new.img boot.img
rm boot_new.img
exit $?
