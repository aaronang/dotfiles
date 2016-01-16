#!/usr/bin/env bash

set -e
set -u

if ! command -v vim > /dev/null 2>&1; then
    echo "Vim is not installed"
    exit 1
fi

if ! command -v curl > /dev/null 2>&1; then
    echo "Curl is not installed"
    exit 1
fi

if ! command -v zsh > /dev/null 2>&1; then
    echo "Zsh is not installed"
    exit 1
fi

if ! command -v tmux > /dev/null 2>&1; then
    echo "Tmux is not installed"
    exit 1
fi

if ! command -v git > /dev/null 2>&1; then
    echo "Git is not installed"
    exit 1
fi

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
