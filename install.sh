# install all my packages
sudo pacman -Syu
sudo pacman -S base-devel libxinerama libx11 libxft xorg-server xorg-xinit xorg-xsetroot xorg-xrandr
sudo pacman -S code terminator thunar feh spotify-launcher playerctl firefox dunst blueberry
sudo pacman -S adapta-gtk-theme ttf-nerd-fonts-symbols-mono shotgun brightnessctl picom
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -S xcursor-breeze papirus-icon-theme
# start bluetooth and wifi
sudo systemctl enable --now bluetooth.service
sudo systemctl enable --now NetworkManager.service
# clone and install dmenu and dwm
git clone https://git.suckless.org/dmenu
git clone https://github.com/Trent008/dwm
# compiles dwm and dmenu, creates .xinitrc, and applies themes
./ultimate-system/update.sh