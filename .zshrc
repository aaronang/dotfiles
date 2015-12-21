# Path to your oh-my-zsh installation
export ZSH=/home/aaronang/.oh-my-zsh

# Theme
ZSH_THEME="fishy"

# Plugins 
plugins=(git cabal)

# User configuration
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/home/aaronang/bin"
source $ZSH/oh-my-zsh.sh

# Nix
. /home/aaronang/.nix-profile/etc/profile.d/nix.sh

# Zsh autocomplete improvements
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

# Aliases
unalias vi
alias vim='vimx'
