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


sudo pacman -R --noconfirm gnome-bluetooth blueberry
sudo pacman -R --noconfirm pipewire-pulse
sudo pacman -R --noconfirm pipewire-alsa
sudo pacman -R --noconfirm pipewire-jack
sudo pacman -R --noconfirm pipewire-media-session
sudo pacman -R --noconfirm pipewire-zeroconf
sudo pacman -Rdd --noconfirm pipewire


sudo pacman -S --noconfirm --needed pulseaudio-equalizer-ladspa
sudo pacman -S --noconfirm --needed pulseaudio-alsa
sudo pacman -S --noconfirm --needed pulseaudio-bluetooth
sudo pacman -S --noconfirm --needed pulseaudio
sudo pacman -S --noconfirm --needed gnome-bluetooth blueberry

echo "Reboot now"