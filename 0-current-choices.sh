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
tput setaf 3
echo "################################################################"
echo "################### Start current choices"
echo "################################################################"
tput sgr0
echo

sudo pacman -Sy

# sh 400-remove-software*

sh 110-install-arcolinux-software*
# sh 100-install-nemesis-software*
sh 120-install-core-software*

sh 200-software-AUR-repo*

echo
tput setaf 2
echo "################################################################"
echo "################### Going to the Personal folder"
echo "################################################################"
tput sgr0
echo

installed_dir=$(dirname $(readlink -f $(basename $(pwd))))
cd $installed_dir/Personal

sh 900-install-personal-settings-folders*
# sh 905-install-personal-settings-bookmarks*
#sh 915-install-personal-settings-screenshot-to-jpg*
# sh 930-autostart-applications*
# sh 940-btrfs-setup*
#sh 950-install-all-fonts-needed-for-conkys-of-arcolinux*
#sh 955-install-settings-autoconnect-to-bluetooth-headset*
# sh 960-ckb-next*
# sh 970-alci*
# sh 970-ariser*
# sh 970-arch*
# sh 970-carli*
# sh 970-arco*
# sh 980-eos*
# sh 980-garuda*
# sh 999-skel*

# cd $installed_dir
# sh 1000-ssh-key-gen

tput setaf 3
echo "################################################################"
echo "End current choices"
echo "################################################################"
tput sgr0
