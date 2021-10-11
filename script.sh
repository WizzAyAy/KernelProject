#!/bin/bash
sudo cp linux-5.14.11/arch/x86/boot/bzImage /boot/vmlinuz-5.14.11
sudo cp linux-5.14.11/System.map /boot/System.map-5.14.11 
sudo cp linux-5.14.11/.config /boot/config-5.14.11 
sudo mkinitramfs -o /boot/initrd.img-5.14.11 5.14.11
sudo update-grub