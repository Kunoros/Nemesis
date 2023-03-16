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

# sh 100-install-nemesis-software*
sh 110-install-arcolinux-software*
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
# sh 910-install-cheat-sheets-repo*
sh 950-install-neovim*
# sh 960-setup-env-variable*
sh 970-setup-tmux-tmp*
# cd $installed_dir
# sh 1000-ssh-key-gen

tput setaf 3
echo "################################################################"
echo "End current choices"
echo "################################################################"
tput sgr0
