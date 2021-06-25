echo Downloading ubuntu image
mkdir bin
cd bin
wget https://cdimage.ubuntu.com/releases/20.04.2/release/ubuntu-20.04.2-preinstalled-server-arm64+raspi.img.xz
xz --decompress ubuntu-20.04.2-preinstalled-server-arm64+raspi.img.xz
mkdir mnt
mount -o loop,offset=269484032 ubuntu-20.04.2-preinstalled-server-arm64+raspi.img ./mnt
ls mnt/


umount mnt
