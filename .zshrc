# Path to your oh-my-zsh installation
export ZSH=$HOME/.oh-my-zsh

# Disable theme to use Pure
ZSH_THEME="spaceship"

plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Set default editor
export EDITOR=vim
export VISUAL=vim

# Create user-specific directory for ZSH functions
export FPATH=~/.zfunctions:$FPATH

# Load local configuration
if [ -f ~/.zshrc.local ]; then
    source ~/.zshrc.local
fi
