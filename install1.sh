# iwctl station wlan0 connect "Dordt-Student"
mkfs.ext4 /dev/nvme0n1p2
mkfs.fat -F 32 /dev/nvme0n1p1
mount /dev/nvme0n1p2 /mnt
mount --mkdir /dev/nvme0n1p1 /mnt/boot
pacstrap /mnt base base-devel linux linux-firmware nano adapta-gtk-theme blueberry brightnessctl code dunst efibootmgr feh firefox git grub gst-plugin-pipewire intel-ucode libxft libxinerama networkmanager papirus-icon-theme picom pipewire pipewire-alsa pipewire-jack pipewire-pulse playerctl shotgun spotify-launcher terminator thunar ttf-nerd-fonts-symbols-mono xorg-server xorg-xinit xorg-xrandr xorg-xsetroot
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt