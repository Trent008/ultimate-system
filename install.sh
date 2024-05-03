#!/bin/bash
set -x
pacstrap -K /mnt base base-devel linux linux-firmware git sof-firmware libxinerama libx11 libxft libpulse xorg-server xorg-xinit xorg-xsetroot xorg-xrandr rofi\
> networkmanager code terminator thunar feh spotify-launcher playerctl firefox dunst blueberry xarchiver unzip efibootmgr grub\
> adapta-gtk-theme papirus-icon-theme ttf-nerd-fonts-symbols-mono shotgun brightnessctl picom intel-ucode pipewire pipewire-alsa pipewire-pulse pipewire-jack gst-plugin-pipewire