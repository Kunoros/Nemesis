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

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))

echo
tput setaf 2
echo "################################################################"
echo "################### Personal settings to install"
echo "################################################################"
tput sgr0
echo
echo "Creating folders we use later"
echo
[ -d $HOME"/.bin" ] || mkdir -p $HOME"/.bin"
[ -d $HOME"/.fonts" ] || mkdir -p $HOME"/.fonts"
[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"
[ -d $HOME"/.themes" ] || mkdir -p $HOME"/.themes"
[ -d $HOME"/.local/share/icons" ] || mkdir -p $HOME"/.local/share/icons"
[ -d $HOME"/.local/share/themes" ] || mkdir -p $HOME"/.local/share/themes"
# [ -d "/personal" ] || sudo mkdir -p "/personal"
[ -d $HOME"/.config" ] || mkdir -p $HOME"/.config"
[ -d $HOME"/.config/fish" ] || mkdir -p $HOME"/.config/fish"
[ -d $HOME"/DATA" ] || mkdir -p $HOME"/DATA"
# [ -d $HOME"/Insync" ] || mkdir -p $HOME"/Insync"
[ -d $HOME"/Insync" ] || mkdir -p $HOME"/Share"
echo
echo "Installing dotfiles repo"
echo
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/kunoros/dotfiles.git tmpdotfiles
rsync --av --exclude '.git' tmpdotfiles/ $HOME/
rm -r tmpdotfiles
# git clone --separate-git-dir=$HOME/
# echo
# echo "Installing fish shell files"
# echo
# cp $installed_dir/settings/fish/alias.fish ~/.config/fish/alias.fish
# echo
# echo "Installing personal settings of variety"
# echo
# [ -d $HOME"/.config/variety" ] || mkdir -p $HOME"/.config/variety"
# cp $installed_dir/settings/variety/variety.conf ~/.config/variety/
# echo
# echo "Installing screenkey for teaching"
# echo
# cp $installed_dir/settings/screenkey/screenkey.json ~/.config/
# echo
# echo "Adding personal looks to /personal"
# echo
# sudo cp -arf ../Personal-iso/personal-iso/* /personal
# echo
# echo "Adding personal thunar to .config/thunar"
# echo
# [ -d $HOME"/.config/Thunar" ] || mkdir -p $HOME"/.config/Thunar"
# cp  settings/thunar/uca.xml $HOME/.config/Thunar
# echo

echo
tput setaf 2
echo "################################################################"
echo "################### Personal settings installed"
echo "################################################################"
tput sgr0
echo
