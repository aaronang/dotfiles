# Path to your oh-my-zsh installation
export ZSH=$HOME/.oh-my-zsh

# Spaceship options that must be set before sourcing theme
SPACESHIP_GIT_SYMBOL=""

ZSH_THEME="spaceship"

plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Set default editor
export EDITOR=vim
export VISUAL=vim

# Load local configuration
if [ -f ~/.zshrc.local ]; then
    source ~/.zshrc.local
fi

# Spaceship options
SPACESHIP_CHAR_COLOR_SUCCESS=magenta
SPACESHIP_CHAR_SYMBOL=▲
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_DIR_TRUNC=0
SPACESHIP_DIR_TRUNC_REPO=false
SPACESHIP_GIT_STATUS_PREFIX=" "
SPACESHIP_GIT_STATUS_SUFFIX=""
