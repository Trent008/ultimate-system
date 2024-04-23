# recompiles dmenu and dwm
cd dmenu
sudo make clean install
cd dwm
sudo make clean install

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