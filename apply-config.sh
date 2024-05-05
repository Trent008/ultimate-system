#!/bin/bash
set -x
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