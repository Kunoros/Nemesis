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
echo "################### Personal settings to install"
echo "################################################################"
tput sgr0
echo
echo "Creating folders we use later"
echo
[ -d $HOME"/.config" ] || mkdir -p $HOME"/.config"
[ -d $HOME"/.bin" ] || mkdir -p $HOME"/.bin"
[ -d $HOME"/.fonts" ] || mkdir -p $HOME"/.fonts"
[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"
[ -d $HOME"/.themes" ] || mkdir -p $HOME"/.themes"
[ -d $HOME"/Projects" ] || mkdir -p $HOME"/Projects"
[ -d $HOME"/DATA" ] || mkdir -p $HOME"/DATA"
[ -d $HOME"/Share" ] || mkdir -p $HOME"/Share"
[ -d $HOME"/cheat-sheets" ] || mkdir -p $HOME"/cheat-sheets"
echo
echo "Installing dotfiles repo"
echo

if [ -d $HOME"/.config" ]; then
    echo "The directory exists"
    echo "Delete current .config"
    rm -rf $HOME/.dotfiles

else
    echo "No, it does not exists"
fi

git clone --separate-git-dir=$HOME/.dotfiles https://github.com/kunoros/dotfiles.git tmpdotfiles
rsync -av --exclude '.git' tmpdotfiles/ $HOME/
rm -r tmpdotfiles

echo
tput setaf 2
echo "################################################################"
echo "################### Personal settings installed"
echo "################################################################"
tput sgr0
echo
