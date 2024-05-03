#!/bin/bash
set -x
sudo pacman -S adapta-gtk-theme \
base-devel \
blueberry \
brightnessctl \
code \
dunst \
feh \
firefox \
htop \
inkscape \
libxft \
libxinerama \
nano \
neofetch \
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
xarchiver \
xorg-server \
xorg-xinit \
xorg-xrandr \
xorg-xsetroot
cd ~
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -S xcursor-breeze
# start bluetooth and wifi
sudo systemctl enable --now bluetooth.service
sudo systemctl enable --now NetworkManager.service
cd ~
# clone and install dwm
git clone https://github.com/Trent008/dwm
# recompiles dwm
cd ~/dwm
sudo make clean install
# create .xinitrc to start dwm and display batery and date
cd ~
sudo cp ultimate-system/.xinitrc ~
# setup system theming
sudo cp ultimate-system/settings.ini /etc/gtk-3.0
mkdir .config/gtk-3.0
mkdir .icons .icons/default .config/rofi
cp ultimate-system/config.rasi .config/rofi
cp ultimate-system/settings.ini .config/gtk-3.0
cp ultimate-system/index.theme .icons/default
cp ultimate-system/.Xresources ~
cp ultimate-system/.gtkrc-2.0 ~
# setup with my git username and email
git config --global user.email "trenthekman68@gmail.com"
git config --global user.name "Trent008"