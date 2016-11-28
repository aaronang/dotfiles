#!/usr/bin/env bash

set -e
set -u

function main {
  time_sync
  install_prerequisites
  create_symoblic_links
  install_oh_my_zsh
  install_arc_theme
  install_paper_theme
  install_tlp
  install_redshift
  install_terminix
  install_nodejs
}

function sync_time {
  echo "Fixing time synchronization between Windows and Ubuntu"
  timedatectl set-local-rtc 1
}

function install_prerequisites {
  echo "Installing prerequisites"
  sudo apt-get install curl zsh git vim-gnome build-essential
}

function create_symoblic_links {
  echo "Creating symbolic links"
  DOTFILES=$(pwd -P)
  mkdir -p ~/.config
  ln -s $DOTFILES/zshrc ~/.zshrc
  ln -s $DOTFILES/redshift.conf ~/.config/redshift.conf
}

function install_oh_my_zsh {
  echo "Installing Oh My Zsh"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  rm ~/.zshrc
  mv ~/.zshrc.pre-oh-my-zsh ~/.zshrc
}

function install_arc_theme {
  echo "Installing Arc theme"
  wget http://download.opensuse.org/repositories/home:Horst3180/xUbuntu_16.04/Release.key
  sudo apt-key add - < Release.key
  sudo apt-get update
  sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' > /etc/apt/sources.list.d/arc-theme.list"
  sudo apt-get update
  sudo apt-get install arc-theme
}

function install_paper_theme {
  echo "Installing Paper theme"
  sudo add-apt-repository ppa:snwh/pulp
  sudo apt-get update
  sudo apt-get install paper-icon-theme
  sudo apt-get install paper-gtk-theme
  sudo apt-get install paper-cursor-theme
}

function install_tlp {
  echo "Installing TLP"
  sudo apt-get install tlp tlp-rdw
  sudo tlp start
}

function install_redshift {
  echo "Installing Redshift"
  sudo apt-get install redshift redshift-gtk
}

function install_terminix {
  echo "Installing Terminix"
  sudo add-apt-repository ppa:webupd8team/terminix
  sudo apt-get update
  sudo apt-get install terminix
}

function install_nodejs {
  echo "Installing Node.js"
  curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
  sudo apt-get install -y nodejs
  mkdir -p ~/.npm-global
  npm config set prefix '~/.npm-global'
}

main
