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

installed_dir=$(dirname $(readlink -f $(basename $(pwd))))

echo
tput setaf 2
echo "################################################################"
echo "################### ArcoLinux Software to install"
echo "################################################################"
tput sgr0
echo

if grep -q arcolinux_repo /etc/pacman.conf; then

  echo
  tput setaf 2
  echo "################################################################"
  echo "################ ArcoLinux repos are already in /etc/pacman.conf"
  echo "################################################################"
  tput sgr0
  echo
else
  echo
  tput setaf 2
  echo "################################################################"
  echo "################### Getting the keys and mirrors for ArcoLinux"
  echo "################################################################"
  tput sgr0
  echo
  sh arch/get-the-keys-and-repos.sh
  sudo pacman -Sy
fi

# sudo pacman -S --noconfirm --needed appstream
sudo pacman -S --noconfirm --needed arcolinux-candy-beauty-git
# sudo pacman -S --noconfirm --needed arcolinux-arc-themes-2021-sky-git
# sudo pacman -S --noconfirm --needed arcolinux-hblock-git
sudo pacman -S --noconfirm --needed archlinux-logout-git
sudo pacman -S --noconfirm --needed arcolinux-pamac-all
sudo pacman -S --noconfirm --needed archlinux-tweak-tool-git
sudo pacman -S --noconfirm --needed arcolinux-wallpapers-git
# sudo pacman -S --noconfirm --needed arcolinux-desktop-trasher-git

sudo pacman -S --noconfirm --needed visual-studio-code-bin
sudo pacman -S --noconfirm --needed brave-bin

#arcolinux_repo_3party
# sudo pacman -S --noconfirm --needed alacritty-themes
# sudo pacman -S --noconfirm --needed arcolinux-arc-themes-2021-git
# sudo pacman -S --noconfirm --needed arcolinux-candy-beauty-git
# sudo pacman -S --noconfirm --needed config-all-desktops-git
# sudo pacman -S --noconfirm --needed arcolinux-fonts-git
# sudo pacman -S --noconfirm --needed arcolinux-grub-theme-vimix-git
# sudo pacman -S --noconfirm --needed arcolinux-gtk3-sardi-arc-git
# sudo pacman -S --noconfirm --needed arcolinux-meta-log
# sudo pacman -S --noconfirm --needed arcolinux-meta-logout
# sudo pacman -S --noconfirm --needed arcolinux-meta-steam-amd
# sudo pacman -S --noconfirm --needed arcolinux-paru-git
# sudo pacman -S --noconfirm --needed arcolinux-qt5-git
# sudo pacman -S --noconfirm --needed arcolinux-rofi-themes-git
# sudo pacman -S --noconfirm --needed arcolinux-sddm-simplicity-git
# sudo pacman -S --noconfirm --needed arcolinux-variety-autostart-git
# sudo pacman -S --noconfirm --needed arcolinux-fish-git
# sudo pacman -S --noconfirm --needed
# sudo pacman -S --noconfirm --needed
# sudo pacman -S --noconfirm --needed

echo
tput setaf 2
echo "################################################################"
echo "################### Done"
echo "################################################################"
tput sgr0
echo
