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

echo "##########################"
echo "Be fore using this script make sure you have added you public ssh to your git profile."
echo "##########################"

echo
echo "Setting up dotfiles reposetory using ssh"
echo

if [ -d $HOME"/.config" ]; then
    echo "The directory exists"
    echo "Delete current .dotfiles"
    rm -rf $HOME/.dotfiles

else
    echo "No, it does not exists"
fi

git clone --separate-git-dir=$HOME/.dotfiles git@github.com:Kunoros/.dotfiles.git tmpdotfiles
rsync -av --exclude '.git' tmpdotfiles/ $HOME/
rm -r tmpdotfiles

echo
echo "Setting up nemesis reposetory using ssh"
echo

cd /$HOME/DATA/
git clone git@github.com:Kunoros/Nemesis.git

git clone git@github.com:Kunoros/archinstall.git