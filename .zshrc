# Path to your oh-my-zsh installation
export ZSH=$HOME/.oh-my-zsh

# Disable theme to use Pure
ZSH_THEME=""

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Set default editor
export EDITOR=vim
export VISUAL=vim

# Create user-specific directory for ZSH functions
export FPATH=~/.zfunctions:$FPATH

# Activate Pure
autoload -U promptinit; promptinit
prompt pure

# Load local configuration
if [ -f ~/.zshrc.local ]; then
    source .zshrc.local
fi
