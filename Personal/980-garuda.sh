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

# when on EOS

###############################################################################
#
#   DECLARATION OF FUNCTIONS
#
###############################################################################

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))

func_install() {
    if pacman -Qi $1 &> /dev/null; then
        tput setaf 2
        echo "###############################################################################"
        echo "################## The package "$1" is already installed"
        echo "###############################################################################"
        echo
        tput sgr0
    else
        tput setaf 3
        echo "###############################################################################"
        echo "##################  Installing package "  $1
        echo "###############################################################################"
        echo
        tput sgr0
        sudo pacman -S --noconfirm --needed $1
    fi
}

###############################################################################

if grep -q "Garuda" /etc/os-release; then

	echo
	tput setaf 2
	echo "################################################################"
	echo "############### We are on an GARUDA iso"
	echo "################################################################"
	echo
	tput sgr0

	sudo pacman -S --noconfirm --needed edu-skel-git
  	sudo pacman -S --noconfirm --needed edu-system-git

	if [ -f /etc/environment ]; then
		echo "QT_QPA_PLATFORMTHEME=qt5ct" | sudo tee /etc/environment
		echo "QT_STYLE_OVERRIDE=kvantum" | sudo tee -a /etc/environment
		echo "EDITOR=nano" | sudo tee -a /etc/environment
		echo "BROWSER=firefox" | sudo tee -a /etc/environment
	fi

	echo
	echo "################################################################"
	echo "Getting latest /etc/nsswitch.conf from ArcoLinux"
	echo "################################################################"
	echo
	sudo cp /etc/nsswitch.conf /etc/nsswitch.conf.bak
	sudo wget https://raw.githubusercontent.com/arcolinux/arcolinuxl-iso/master/archiso/airootfs/etc/nsswitch.conf -O $workdir/etc/nsswitch.conf

	if [ -f /etc/nanorc ]; then
	sudo cp $installed_dir/settings/nano/nanorc /etc/nanorc
	fi

  	if [ -f /usr/share/xsessions/xfce.desktop ]; then
		echo
		tput setaf 2
		echo "################################################################"
		echo "################### We are on Xfce4"
		echo "################################################################"
		tput sgr0
		echo

    	cp -arf /etc/skel/. ~

		echo
		echo "Changing the whiskermenu"
		echo
		cp $installed_dir/settings/garuda/whiskermenu-7.rc ~/.config/xfce4/panel/whiskermenu-7.rc
		sudo cp $installed_dir/settings/garuda/whiskermenu-7.rc /etc/skel/.config/xfce4/panel/whiskermenu-7.rc

		echo
		echo "Changing the icons and theme"
		echo

		FIND="Arc-Dark"
		REPLACE="Arc-Dawn-Dark"
		sed -i "s/$FIND/$REPLACE/g" ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
    	sudo sed -i "s/$FIND/$REPLACE/g" /etc/skel/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml

		FIND="Sardi-Arc"
		REPLACE="Edu-Papirus-Dark-Tela"
		sed -i "s/$FIND/$REPLACE/g" ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
    	sudo sed -i "s/$FIND/$REPLACE/g" /etc/skel/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml

    fi

    tput setaf 2
    echo "################################################################"
    echo "Done"
    echo "################################################################"
    echo
    tput sgr0

fi
