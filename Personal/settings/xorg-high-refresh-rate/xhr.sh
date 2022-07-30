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

sudo pacman -S --noconfirm --needed xorg-xrandr

xrandr -r 144

# xrandr --output "HDMI-A-0" --mode 1920x1080 --output "DisplayPort-1" --mode 1920x1080

xrandr --output "HDMI-A-0" --output "DisplayPort-1" --mode 1920x1080 --left-of "DisplayPort-1"
