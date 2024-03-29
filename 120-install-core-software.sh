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

##################################################################################################################

echo "Deleting current /etc/pacman.d/mirrorlist and replacing with"
echo
echo "Server = http://mirror.rackspace.com/archlinux/\$repo/os/\$arch
Server = https://mirror.rackspace.com/archlinux/\$repo/os/\$arch
Server = https://mirrors.kernel.org/archlinux/\$repo/os/\$arch
Server = https://mirror.osbeck.com/archlinux/\$repo/os/\$arch
Server = http://mirror.osbeck.com/archlinux/\$repo/os/\$arch
Server = https://geo.mirror.pkgbuild.com/\$repo/os/\$arch" | sudo tee /etc/pacman.d/mirrorlist
echo
tput setaf 2
echo "########################################################################"
echo "Arch Linux Servers have been written to /etc/pacman.d/mirrorlist"
echo "Use nmirrorlist to inspect"
echo "########################################################################"
tput sgr0
echo

sudo pacman -Syy

echo
tput setaf 2
echo "################################################################"
echo "################### Core software"
echo "################################################################"
tput sgr0
echo

#Fonts:
sudo pacman -S --noconfirm --needed ttf-wps-fonts
sudo pacman -S --noconfirm --needed adobe-source-sans-fonts
sudo pacman -S --noconfirm --needed awesome-terminal-fonts
sudo pacman -S --noconfirm --needed ttf-bitstream-vera
sudo pacman -S --noconfirm --needed ttf-dejavu
sudo pacman -S --noconfirm --needed ttf-droid
sudo pacman -S --noconfirm --needed ttf-hack
sudo pacman -S --noconfirm --needed ttf-inconsolata
sudo pacman -S --noconfirm --needed ttf-liberation
sudo pacman -S --noconfirm --needed ttf-roboto
sudo pacman -S --noconfirm --needed ttf-roboto-mono
sudo pacman -S --noconfirm --needed ttf-ubuntu-font-family
sudo pacman -S --noconfirm --needed ttf-fira-code
sudo pacman -S --noconfirm --needed ttf-liberation
sudo pacman -S --noconfirm --needed ttf-ms-fonts
sudo pacman -S --noconfirm --needed ttf-nerd-fonts-symbols
sudo pacman -S --noconfirm --needed ttf-roboto
sudo pacman -S --noconfirm --needed noto-fonts
sudo pacman -S --noconfirm --needed ttf-nerd-fonts-symbols-common
sudo pacman -S --noconfirm --needed rxvt-unicode
sudo pacman -S --noconfirm --needed urxvt-fullscreen
sudo pacman -S --noconfirm --needed urxvt-perls
sudo pacman -S --noconfirm --needed urxvt-resize-font-git
sudo pacman -S --noconfirm --needed noto-fonts-emoji

#Office suite:
sudo pacman -S --noconfirm --needed libreoffice
#sudo pacman -S --noconfirm --needed wps-office
#sudo pacman -S --noconfirm --needed wps-office-mime

#Firmware
sudo pacman -S --noconfirm --needed aic94xx-firmware
sudo pacman -S --noconfirm --needed alsa-firmware
sudo pacman -S --noconfirm --needed linux-firmware-qlogic
sudo pacman -S --noconfirm --needed upd72020x-fw
sudo pacman -S --noconfirm --needed wd719x-firmware

#Terminal and shell:
sudo pacman -S --noconfirm --needed alacritty
sudo pacman -S --noconfirm --needed zsh
sudo pacman -S --noconfirm --needed zsh-completions
sudo pacman -S --noconfirm --needed zsh-syntax-highlighting
sudo pacman -S --noconfirm --needed oh-my-zsh-git
sudo pacman -S --noconfirm --needed bash-completion
sudo pacman -S --noconfirm --needed fish
sudo pacman -S --noconfirm --needed kitty
sudo pacman -S --noconfirm --needed starship
sudo pacman -S --noconfirm --needed tmux
sudo pacman -S --noconfirm --needed exa
# sudo pacman -S --noconfirm --needed sparklines-git

#Audio:
sudo pacman -S --noconfirm --needed alsa-lib
sudo pacman -S --noconfirm --needed alsa-plugins
sudo pacman -S --noconfirm --needed alsa-utils
sudo pacman -S --noconfirm --needed pulseaudio-bluetooth
sudo pacman -S --noconfirm --needed pavucontrol
sudo pacman -S --noconfirm --needed playerctl
sudo pacman -S --noconfirm --needed spotify

#Video:
sudo pacman -S --noconfirm --needed vlc

#Networking:
sudo pacman -S --noconfirm --needed avahi
sudo pacman -S --noconfirm --needed nfs-utils
sudo pacman -S --noconfirm --needed network-manager-applet
sudo pacman -S --noconfirm --needed networkmanager-openvpn
sudo pacman -S --noconfirm --needed openresolv
sudo pacman -S --noconfirm --needed bluez
sudo pacman -S --noconfirm --needed bluez-libs
sudo pacman -S --noconfirm --needed bluez-utils
sudo pacman -S --noconfirm --needed blueberry
sudo pacman -S --noconfirm --needed ntp
sudo pacman -S --noconfirm --needed nss-mdns
sudo pacman -S --noconfirm --needed laptop-detect
sudo pacman -S --noconfirm --needed kdeconnect

#Filesystem and storage:
sudo pacman -S --noconfirm --needed archiso
sudo pacman -S --noconfirm --needed squashfs-tools

#System monitoring:
sudo pacman -S --noconfirm --needed htop
sudo pacman -S --noconfirm --needed btop
# sudo pacman -S --noconfirm --needed gtop
sudo pacman -S --noconfirm --needed hardinfo-gtk3
sudo pacman -S --noconfirm --needed hddtemp
sudo pacman -S --noconfirm --needed lshw
sudo pacman -S --noconfirm --needed hw-probe
sudo pacman -S --noconfirm --needed cpuid
sudo pacman -S --noconfirm --needed speedtest-cli-git

#System utilities:
sudo pacman -S --noconfirm --needed logrotate
sudo pacman -S --noconfirm --needed xdg-user-dirs
sudo pacman -S --noconfirm --needed xorg-xkill
sudo pacman -S --noconfirm --needed man-db
sudo pacman -S --noconfirm --needed man-pages
sudo pacman -S --noconfirm --needed mlocate
sudo pacman -S --noconfirm --needed dmenu
sudo pacman -S --noconfirm --needed downgrade
sudo pacman -S --noconfirm --needed evince
sudo pacman -S --noconfirm --needed expac
sudo pacman -S --noconfirm --needed numlockx
sudo pacman -S --noconfirm --needed polkit-gnome
sudo pacman -S --noconfirm --needed rsync
sudo pacman -S --noconfirm --needed scrot
sudo pacman -S --noconfirm --needed simplescreenrecorder
sudo pacman -S --noconfirm --needed sxhkd
sudo pacman -S --noconfirm --needed system-config-printer
sudo pacman -S --noconfirm --needed time
sudo pacman -S --noconfirm --needed font-manager
sudo pacman -S --noconfirm --needed galculator
sudo pacman -S --noconfirm --needed hardcode-fixer-git
sudo pacman -S --noconfirm --needed rofi
sudo pacman -S --noconfirm --needed rofi-emoji
sudo pacman -S --noconfirm --needed xclip
sudo pacman -S --noconfirm --needed picom
sudo pacman -S --noconfirm --needed xsel

#Graphics utilities:
sudo pacman -S --noconfirm --needed arandr
sudo pacman -S --noconfirm --needed feh
sudo pacman -S --noconfirm --needed file-roller
sudo pacman -S --noconfirm --needed gimp
sudo pacman -S --noconfirm --needed inkscape
sudo pacman -S --noconfirm --needed nomacs

#Internet:
sudo pacman -S --noconfirm --needed firefox
sudo pacman -S --noconfirm --needed curl
sudo pacman -S --noconfirm --needed wget
# sudo pacman -S --noconfirm --needed chromium

#Communication:
sudo pacman -S --noconfirm --needed discord

#archive utilities:
sudo pacman -S --noconfirm --needed gzip
sudo pacman -S --noconfirm --needed p7zip
sudo pacman -S --noconfirm --needed unace
sudo pacman -S --noconfirm --needed unrar
sudo pacman -S --noconfirm --needed unzip

#Version control:
sudo pacman -S --noconfirm --needed git
sudo pacman -S --noconfirm --needed lazygit
# sudo pacman -S --noconfirm --needed gitahead-bin
# sudo pacman -S --noconfirm --needed gitfiend

#Package management:
sudo pacman -S --noconfirm --needed paru-bin
sudo pacman -S --noconfirm --needed yay-bin

#Search utilities:
sudo pacman -S --noconfirm --needed ripgrep
sudo pacman -S --noconfirm --needed the_platinum_searcher-bin
sudo pacman -S --noconfirm --needed the_silver_searcher

#Terminal utilities:
sudo pacman -S --noconfirm --needed asciinema
sudo pacman -S --noconfirm --needed bat
sudo pacman -S --noconfirm --needed catfish
sudo pacman -S --noconfirm --needed cmatrix
if [ ! -f /usr/bin/duf ]; then
  sudo pacman -S --noconfirm --needed duf
fi
sudo pacman -S --noconfirm --needed lolcat
sudo pacman -S --noconfirm --needed most
sudo pacman -S --noconfirm --needed neofetch
sudo pacman -S --noconfirm --needed pv
sudo pacman -S --noconfirm --needed rate-mirrors-bin
sudo pacman -S --noconfirm --needed tree
sudo pacman -S --noconfirm --needed wttr

#File management:
sudo pacman -S --noconfirm --needed thunar
sudo pacman -S --noconfirm --needed gnome-disk-utility
sudo pacman -S --noconfirm --needed gparted
sudo pacman -S --noconfirm --needed gvfs-smb
sudo pacman -S --noconfirm --needed meld
sudo pacman -S --noconfirm --needed mintstick-git
sudo pacman -S --noconfirm --needed variety
# sudo pacman -S --noconfirm --needed baobab

#System configuration:
sudo pacman -S --noconfirm --needed refind
# sudo pacman -S --noconfirm --needed grub-customizer

#Text editors:
sudo pacman -S --noconfirm --needed vim
sudo pacman -S --noconfirm --needed emacs
sudo pacman -S --noconfirm --needed neovim
sudo pacman -S --noconfirm --needed notion-app
sudo pacman -S --noconfirm --needed obsidian

#Themse:
sudo pacman -S --noconfirm --needed arc-darkest-theme-git
sudo pacman -S --noconfirm --needed arc-gtk-theme
sudo pacman -S --noconfirm --needed bibata-cursor-theme-bin
sudo pacman -S --noconfirm --needed kvantum
sudo pacman -S --noconfirm --needed surfn-icons-git
# sudo pacman -S --noconfirm --needed ayu-theme
# sudo pacman -S --noconfirm --needed base16-alacritty-git

#Printing:
sudo pacman -S --noconfirm --needed cups
sudo pacman -S --noconfirm --needed cups-pdf
sudo pacman -S --noconfirm --needed ghostscript
sudo pacman -S --noconfirm --needed gsfonts
sudo pacman -S --noconfirm --needed gutenprint
sudo pacman -S --noconfirm --needed gtk3-print-backends
sudo pacman -S --noconfirm --needed libcups
sudo pacman -S --noconfirm --needed lxappearance
sudo pacman -S --noconfirm --needed system-config-printer
sudo pacman -S --noconfirm --needed sane
sudo pacman -S --noconfirm --needed simple-scan

#Image utilities:
sudo pacman -S --noconfirm --needed gpick
sudo pacman -S --noconfirm --needed flameshot-git

#Development tools:
sudo pacman -S --noconfirm --needed composer
sudo pacman -S --noconfirm --needed docker
sudo pacman -S --noconfirm --needed docker-compose
sudo pacman -S --noconfirm --needed php
sudo pacman -S --noconfirm --needed python-pip
sudo pacman -S --noconfirm --needed python-pyparted
sudo pacman -S --noconfirm --needed reflector
sudo pacman -S --noconfirm --needed rust
sudo pacman -S --noconfirm --needed zig
sudo pacman -S --noconfirm --needed nodejs
sudo pacman -S --noconfirm --needed npm
sudo pacman -S --noconfirm --needed base-devel
sudo pacman -S --noconfirm --needed pass
sudo pacman -S --noconfirm --needed syncthing

#Color scheme generation:
sudo pacman -S --noconfirm --needed python-pywal

#Screen color temperature:
# sudo pacman -S --noconfirm --needed redshift

# Cloud storage:
# sudo pacman -S --noconfirm --needed insync

sudo systemctl enable avahi-daemon.service
sudo systemctl enable ntpd.service

###############################################################################################

# when on Arch Linux

if grep -q "Arch Linux" /etc/os-release; then
  echo
  tput setaf 2
  echo "################################################################"
  echo "############### Installing software for Arch Linux - Any desktop"
  echo "################################################################"
  tput sgr0
  echo

  echo
  echo "################################################################"
  echo "Getting latest /etc/nsswitch.conf from ArcoLinux"
  echo "################################################################"
  echo
  sudo cp /etc/nsswitch.conf /etc/nsswitch.conf.bak
  sudo wget https://raw.githubusercontent.com/arcolinux/arcolinuxl-iso/master/archiso/airootfs/etc/nsswitch.conf -O $workdir/etc/nsswitch.conf

fi

echo
tput setaf 2
echo "################################################################"
echo "################### Done"
echo "################################################################"
tput sgr0
echo
