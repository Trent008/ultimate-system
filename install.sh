#!/bin/bash
set -x
# install packages
sudo pacman -S adapta-gtk-theme \
base-devel \
blueberry \
brightnessctl \
code \
dunst \
feh \
firefox \
fuse3 \
htop \
libxft \
libxinerama \
nano \
neofetch \
obs-studio \
papirus-icon-theme \
picom \
playerctl \
rclone \
rofi \
shotgun \
spotify-launcher \
terminator \
thunar \
ttf-nerd-fonts-symbols-mono \
unzip \
vlc \
xarchiver \
xorg-server \
xorg-xinit \
xorg-xrandr \
xorg-xsetroot
# clone xcursor-breeze, usbimager, and dwm
cd ~
git clone https://aur.archlinux.org/yay.git
git clone https://github.com/Trent008/dwm
cd yay
makepkg -si
yay -S xcursor-breeze usbimager prusa-slicer
# start bluetooth and wifi
sudo systemctl enable --now bluetooth.service
sudo systemctl enable --now NetworkManager.service
# compile dwm
cd ~/dwm
sudo make clean install
cd ~/ultimate-system
# script to apply configuration files and other config details
./apply-config.sh