#!/bin/bash

#For internal
#cp $CM_ROOT/device/bn/acclaim/boot/flashing_boot_emmc.img $TARGET_DIR

mkbootimg --kernel zImage --cmdline 'console=/dev/null' --base 0x80080000 --ramdisk ramdisk-new.gz --output boot.img

#For internal
#cat flashing_boot_emmc.img boot_new.img > boot.img
#mv boot_new.img boot.img

#if [ -e boot_new.img ]; then
#	rm boot_new.img
#fi

exit $?
