#!/bin/bash
sudo make -j 5
sudo time make modules_install
sudo cp arch/x86/boot/bzImage /boot/vmlinuz-5.14.11
sudo cp System.map /boot/System.map-5.14.11 
sudo cp .config /boot/config-5.14.11 
sudo mkinitramfs -o /boot/initrd.img-5.14.11 5.14.11
sudo update-grub