#!/bin/bash

cd ~
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -S --needed xcursor-breeze usbimager prusa-slicer
git config --global user.email "trenthekman68@gmail.com"
git config --global user.name "Trent008"
git config --global pull.rebase false