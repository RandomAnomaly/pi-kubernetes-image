#! /bin/bash

function fetch_image(){
    cd /kube-image/bin
    wget https://cdimage.ubuntu.com/releases/20.04.2/release/ubuntu-20.04.2-preinstalled-server-arm64+raspi.img.xz
}

function decompress_image(){
    cd /kube-image/bin
    xz --decompress ubuntu-20.04.2-preinstalled-server-arm64+raspi.img.xz
}

function prepare_working_dir(){
    mkdir /kube-image/bin
    mkdir /kube-image/mnt
}

function mount_image(){
    mount -o loop,offset=269484032 ubuntu-20.04.2-preinstalled-server-arm64+raspi.img /kube-image/mnt
}

function execute_image_command(){
    local com=$1
    chroot /kube-image/mnt ${com}
}


prepare_working_dir
fetch_image
decompress_image
mount_image
execute_image_command "/usr/bin/uname -a -r"
