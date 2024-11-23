#!/bin/bash
if [ -z $1 ]
then
    echo "usage: ./mkubi filesystem dir"
    exit 0
fi
#./mkfs.ubifs -x lzo -F -v -q -r $1 -m 2048 -e 126976 -c 1024 -o rootfs.ubi
./mkfs.ubifs -x lzo -v -q -r $1 -m 2048 -e 126976 -c 1023 -o root.ubi
./ubinize -v -o rootfs.ubi -m 2048 -p 128KiB -s 2048 -O 2048 ubinize.cfg
rm root.ubi
chmod 777 rootfs.ubi
