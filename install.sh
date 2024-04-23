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
# clone and install dmenu and dwm
git clone https://aur.archlinux.org/yay.git
git clone https://git.suckless.org/dmenu
git clone https://github.com/Trent008/dwm
# compiles dwm and dmenu, creates .xinitrc, and applies themes
./ultimate-system/update.sh