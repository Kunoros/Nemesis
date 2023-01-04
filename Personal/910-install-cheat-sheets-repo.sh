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
echo "Installing cheat-sheet repo"
echo

if [ -d $HOME"/.cheat-sheets" ]; then
    echo "The directory exists"
    echo "Delete current cheat-sheets."
    rm -rf $HOME/.cheat-sheets

else
    echo "No, it does not exists"
fi

git clone --separate-git-dir=$HOME/.cheat-sheets https://github.com/kunoros/cheat-sheets.git tmpcheatsheet
rsync -av --exclude '.git' tmpcheatsheet/ $HOME/cheat-sheets/
rm -r tmpcheatsheet

/usr/bin/git --git-dir=$HOME/cheat-sheets/.cheat-sheets --work-tree=$HOME/cheat-sheets config --local status.showUntrackedFiles no

echo
tput setaf 2
echo "################################################################"
echo "################### Personal settings installed"
echo "################################################################"
tput sgr0
e