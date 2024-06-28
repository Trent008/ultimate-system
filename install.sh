#!/bin/bash

cd ~
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -S --needed xcursor-breeze usbimager prusa-slicer