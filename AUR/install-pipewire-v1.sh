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

sudo pacman -R --noconfirm pulseaudio-equalizer-ladspa
sudo pacman -R --noconfirm pulseaudio-alsa
sudo pacman -R --noconfirm gnome-bluetooth blueberry
sudo pacman -R --noconfirm pulseaudio-bluetooth
sudo pacman -R --noconfirm pulseaudio

sudo pacman -S --noconfirm --needed pipewire
sudo pacman -S --noconfirm --needed pipewire-media-session
sudo pacman -S --noconfirm --needed pipewire-alsa
sudo pacman -S --noconfirm --needed pipewire-jack
sudo pacman -S --noconfirm --needed pipewire-zeroconf

sudo pacman -S --noconfirm --needed pipewire-pulse
sudo pacman -S --noconfirm --needed blueberry
sudo pacman -S --noconfirm --needed pavucontrol
sudo systemctl enable bluetooth.service

echo "Reboot now"
