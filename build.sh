#! /bin/bash
echo Downloading ubuntu image
mkdir bin
cd bin
wget https://cdimage.ubuntu.com/releases/20.04.2/release/ubuntu-20.04.2-preinstalled-server-arm64+raspi.img.xz > /dev/null
xz --decompress ubuntu-20.04.2-preinstalled-server-arm64+raspi.img.xz > /dev/null
mkdir mnt
mount -o loop,offset=269484032 ubuntu-20.04.2-preinstalled-server-arm64+raspi.img ./mnt
ls mnt/

chroot ~/mnt/ /usr/bin/uname -a -r

umount mnt
