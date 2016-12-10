#!/bin/sh

set -e

if ! hash apt-get 2>/dev/null; then
	whiptail --title "Orangepi Build System" --msgbox "This scripts requires a Debian based distrbution. If you not use Debian/Ubunut, pls install:[ bsdtar mtools u-boot-tools pv bc sunxi-tools gcc automake make qemu]"
	exit 1
fi

apt-get -y --no-install-recommends --fix-missing install \
	bsdtar mtools u-boot-tools pv bc \
	gcc automake make qemu

######
## Note! Don't edit next line! The scripts will get tail line to exexute some scripts.
#0
