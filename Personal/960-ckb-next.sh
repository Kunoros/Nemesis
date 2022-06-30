#!/bin/bash
#set -e
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

if [ ! -f /usr/bin/hwinfo ]; then
  sudo pacman -S --noconfirm --needed hwinfo
fi

if hwinfo | grep "CORSAIR K70" > /dev/null 2>&1 ; then

	echo
	tput setaf 2
	echo "################################################################"
	echo "################### Corsair keyboard to be installed"
	echo "################################################################"
	tput sgr0
	echo

	sudo pacman -S --noconfirm --needed ckb-next-git
	installed_dir=$(pwd)
	[ -d $HOME"/.config/ckb-next" ] || mkdir -p $HOME"/.config/ckb-next"

	cp -r $installed_dir/settings/ckb-next/ckb-next.conf ~/.config/ckb-next.conf
	cp -f $installed_dir/settings/ckb-next/ckb-next.autostart.desktop ~/.config/autostart/ckb-next.autostart.desktop
	
	sudo systemctl enable ckb-next-daemon
	sudo systemctl start ckb-next-daemon

	echo
	tput setaf 2
	echo "################################################################"
	echo "################### Corsair keyboard installed"
	echo "################################################################"
	tput sgr0
	echo

fi
