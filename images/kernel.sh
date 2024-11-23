#!/bin/bash
set -e
sunxi-fel uboot uboot-with-spl-usb.bin
fastboot flash uboot uboot-with-spl-spinand.bin
fastboot flash zImage zImage
fastboot flash dtb suniv-f1c100s-licheepi-nano.dtb
