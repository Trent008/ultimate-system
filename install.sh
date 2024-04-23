# install all my packages
sudo pacman -Syu
sudo pacman -S libxinerama libx11 libxft xorg-server xorg-xinit xorg-xsetroot xorg-xrandr
sudo pacman -S code terminator pcmanfm feh spotify-launcher playerctl firefox dunst
sudo pacman -S adapta-gtk-theme ttf-nerd-fonts-symbols-mono shotgun brightnessctl picom
cd yay
makepkg -si
yay -S xcursor-breeze papirus-icon-theme bluetuith
# start bluetooth and wifi
sudo systemctl enable --now bluetooth.service
sudo systemctl enable --now NetworkManager.service
# create .xinitrc to start dwm and display batery and date
cd ~
sudo cp ultimate-system/.xinitrc ~
# setup system theming
sudo cp ultimate-system/settings.ini /etc/gtk-3.0
mkdir .config/gtk-3.0
mkdir .icons .icons/default
cp ultimate-system/settings.ini .config/gtk-3.0
cp ultimate-system/index.theme .icons/default
cp ultimate-system/.Xresources ~
cp ultimate-system/.gtkrc-2.0 ~
# clone and install dmenu and dwm
git clone https://aur.archlinux.org/yay.git
git clone https://git.suckless.org/dmenu
git clone https://github.com/Trent008/dwm
cd dmenu
sudo make clean install
cd dwm
sudo make clean install
cd ~