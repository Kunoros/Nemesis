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


echo
echo "Generating SSH-key"
echo

echo "##########################"
echo "Write your email"
echo "##########################"

read input

ssh-keygen -t ed25519 -C "$input"

echo "##########################"
echo "Copy your public key to your git accounts"
echo "##########################"




