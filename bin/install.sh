#!/usr/bin/env bash

set -e
set -u

echo "Installing prerequisites"
sudo apt-get install curl zsh git vim-gnome

echo "Creating symbolic links"
DOTFILES=$(pwd -P)
mkdir -p ~/.config
ln -s $DOTFILES/zshrc ~/.zshrc
ln -s $DOTFILES/redshift.conf ~/.config/redshift.conf

echo "Installing Oh My Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
rm ~/.zshrc
mv ~/.zshrc.pre-oh-my-zsh ~/.zshrc

echo "Installing Arc theme"
wget http://download.opensuse.org/repositories/home:Horst3180/xUbuntu_16.04/Release.key
sudo apt-key add - < Release.key
sudo apt-get update
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' > /etc/apt/sources.list.d/arc-theme.list"
sudo apt-get update
sudo apt-get install arc-theme

echo "Installing Paper theme"
sudo add-apt-repository ppa:snwh/pulp
sudo apt-get update
sudo apt-get install paper-icon-theme
sudo apt-get install paper-gtk-theme
sudo apt-get install paper-cursor-theme

echo "Installing TLP"
sudo apt-get install tlp tlp-rdw
sudo tlp start

echo "Installing Redshift"
sudo apt-get install redshift redshift-gtk
