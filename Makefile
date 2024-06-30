# dwm - dynamic window manager
# See LICENSE file for copyright and license details.

include config.mk

SRC = drw.c dwm.c util.c
OBJ = ${SRC:.c=.o}

all: dwm

config.h:
	cp config.def.h $@

dwm: ${OBJ}
	${CC} -o $@ ${OBJ} ${LDFLAGS}

clean:
	rm -f dwm ${OBJ} dwm-${VERSION}.tar.gz

dist: clean
	mkdir -p dwm-${VERSION}
	cp -R LICENSE Makefile README config.def.h config.mk\
		dwm.1 drw.h util.h ${SRC} dwm.png transient.c dwm-${VERSION}
	tar -cf dwm-${VERSION}.tar dwm-${VERSION}
	gzip dwm-${VERSION}.tar
	rm -rf dwm-${VERSION}

install: all
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f dwm ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/dwm
	mkdir -p ${DESTDIR}${MANPREFIX}/man1
	sed "s/VERSION/${VERSION}/g" < dwm.1 > ${DESTDIR}${MANPREFIX}/man1/dwm.1
	chmod 644 ${DESTDIR}${MANPREFIX}/man1/dwm.1

.c.o:
	sudo pacman -S --needed\
		arandr\
		base-devel\
		blueberry\
		breeze-gtk\
		brightnessctl\
		code\
		dunst\
		feh\
		firefox\
		htop\
		inkscape\
		libxft\
		libxinerama\
		nano\
		neofetch\
		obs-studio\
		papirus-icon-theme\
		pavucontrol\
		picom\
		playerctl\
		rclone\
		rofi\
		shotgun\
		spotify-launcher\
		terminator\
		thunar\
		ttf-nerd-fonts-symbols-mono\
		unzip\
		vlc\
		xarchiver\
		xorg-server\
		xorg-xinit\
		xorg-xrandr\
		xorg-xsetroot
	systemctl enable --now bluetooth.service
	systemctl enable --now NetworkManager.service
	mkdir -p\
		${HOMEPREFIX}/.config/gtk-3.0\
		${HOMEPREFIX}/.config/rofi\
		${HOMEPREFIX}/.config/terminator\
		${HOMEPREFIX}/.icons\
		${HOMEPREFIX}/.icons/default
	cp Config/.xinitrc ${HOMEPREFIX}
	cp Config/config.rasi ${HOMEPREFIX}/.config/rofi
	cp Config/config ${HOMEPREFIX}/.config/terminator
	cp Config/settings.ini ${HOMEPREFIX}/.config/gtk-3.0
	cp Config/index.theme ${HOMEPREFIX}/.icons/default
	cp Config/.Xresources ${HOMEPREFIX}/
	cp Config/.gtkrc-2.0 ${HOMEPREFIX}/
	cp Config/settings.ini /etc/gtk-3.0
	${CC} -c ${CFLAGS} $<

${OBJ}: config.h config.mk

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/dwm\
		${DESTDIR}${MANPREFIX}/man1/dwm.1

.PHONY: all clean dist install uninstall
