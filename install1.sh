iwctl station wlan0 connect "Dordt-Student"
pacman -Syy
pacman -S reflector
reflector -c "US" -f 12 -l 10 -n 12 --save /etc/pacman.d/mirrorlist
pacstrap /mnt base base-devel linux linux-firmware nano adapta-gtk-theme blueberry brightnessctl code dunst efibootmgr feh firefox grub gst-plugin-pipewire intel-ucode libxft libxinerama networkmanager papirus-icon-theme picom pipewire pipewire-alsa pipewire-jack pipewire-pulse playerctl shotgun spotify-launcher terminator thunar ttf-nerd-fonts-symbols-mono xorg-server xorg-xinit xorg-xrandr xorg-xsetroot
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt