#!/bin/bash


#### Kernel ####
cd linux-5.14.5/
time make -j 20 
sudo time make modules_install
sudo /sbin/installkernel 5.14.5 arch/x86_64/boot/bzImage System.map /boot/
sudo update-grub
cd ../
### GRUB ###

cd grub/Tela-1080p
sudo ./install.sh
cd ../..

### PERSONALISATION ###

