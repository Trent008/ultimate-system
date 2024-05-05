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
htop \
libxft \
libxinerama \
nano \
neofetch \
obs-studio \
papirus-icon-theme \
picom \
playerctl \
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
# clone xcursor-breeze and dwm
cd ~
git clone https://aur.archlinux.org/xcursor-breeze.git
git clone https://github.com/Trent008/dwm
cd xcursor-breeze
makepkg -si
# start bluetooth and wifi
sudo systemctl enable --now bluetooth.service
sudo systemctl enable --now NetworkManager.service
# compile dwm
cd ~/dwm
sudo make clean install
# copy .xinitrc to start dwm and display batery and date
cd ~
cp ultimate-system/.xinitrc ~
# apply themes
mkdir .config/gtk-3.0
mkdir .icons .icons/default .config/rofi
cp ultimate-system/config.rasi .config/rofi
cp ultimate-system/settings.ini .config/gtk-3.0
cp ultimate-system/index.theme .icons/default
cp ultimate-system/.Xresources ~
cp ultimate-system/.gtkrc-2.0 ~
sudo cp ultimate-system/settings.ini /etc/gtk-3.0
# setup with my git username and email
git config --global user.email "trenthekman68@gmail.com"
git config --global user.name "Trent008"