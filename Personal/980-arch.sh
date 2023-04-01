#!/bin/bash
#set -e
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
#tput setaf 0 = black
#tput setaf 1 = red
#tput setaf 2 = green
#tput setaf 3 = yellow
#tput setaf 4 = dark blue
#tput setaf 5 = purple
#tput setaf 6 = cyan
#tput setaf 7 = gray
#tput setaf 8 = light blue
##################################################################################################################

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))

##################################################################################################################

if [ ! -f /etc/dev-rel ] ; then 

	if grep -q "archlinux" /etc/os-release; then

		echo
		tput setaf 2
		echo "################################################################"
		echo "################### We are on ARCH LINUX"
		echo "################################################################"
		tput sgr0
		echo

		echo
		echo "Pacman parallel downloads	"
		FIND="#ParallelDownloads = 10"
		REPLACE="ParallelDownloads = 10"
		sudo sed -i "s/$FIND/$REPLACE/g" /etc/pacman.conf

		echo
		echo "Bootloader time to 1 second"
		if [ -f /boot/loader/loader.conf ]; then
			FIND="timeout 5"
			REPLACE="timeout 1"
			sudo sed -i "s/$FIND/$REPLACE/g" /boot/loader/loader.conf

		fi
		echo

		echo
		echo "################################################################"
		echo "Getting latest /etc/nsswitch.conf from ArcoLinux"
		echo "################################################################"
		echo
		sudo cp /etc/nsswitch.conf /etc/nsswitch.conf.bak
		sudo wget https://raw.githubusercontent.com/arcolinux/arcolinuxl-iso/master/archiso/airootfs/etc/nsswitch.conf -O $workdir/etc/nsswitch.conf


		echo
		tput setaf 6
		echo "################################################################"
		echo "################### Done"
		echo "################################################################"
		tput sgr0
		echo

	fi

fi
