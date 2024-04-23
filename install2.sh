ln -sf /usr/share/zoneinfo/US/Central /etc/localtime
hwclock --systohc
locale-gen
echo "LANG=en_US.UTF-8" > /mnt/etc/locale.conf
export LANG=en_US.UTF-8
echo archlinux > /etc/hostname
passwd
mkdir /boot/efi
mount /dev/nvme0n1p1 /boot/efi
grub-install --target=x86_64-efi --bootloader-id=GRUB --efi-directory=/boot/efi
grub-mkconfig -o /boot/grub/grub.cfg
useradd -m trent
passwd trent
usermod -aG wheel,audio,video,storage trent
EDITOR=nano visudo
systemctl enable bluetooth.service
systemctl enable NetworkManager.service