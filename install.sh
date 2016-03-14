#!/usr/bin/env bash

set -e
set -u

read -r -p "Would you like to install the prerequisites for Ubuntu? [y/N]" response
case $response in
    [yY][eE][sS]|[yY])
        sudo apt-get install curl zsh git tmux vim-gnome
        ;;
    *)
        ;;
esac

DOTFILES=$(pwd -P)

mkdir -p ~/.config

echo "Creating symbolic links"
ln -s $DOTFILES/zshrc ~/.zshrc
ln -s $DOTFILES/vimrc ~/.vimrc
ln -s $DOTFILES/tmux.conf ~/.tmux.conf
ln -s $DOTFILES/tmuxline ~/.tmuxline
ln -s $DOTFILES/redshift.conf ~/.config/redshift.conf

echo "Installing Nix"
curl https://nixos.org/nix/install | sh

echo "Changing default shell to Zsh"
chsh -s $(which zsh) $(whoami)

echo "Installing Oh My Zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
rm ~/.zshrc
mv ~/.zshrc.pre-oh-my-zsh ~/.zshrc

echo "Installing NeoBundle"
sh -c "$(curl -s https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh)"
vim +NeoBundleInstall +qall
