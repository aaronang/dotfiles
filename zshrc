# Path to your oh-my-zsh installation
export ZSH=/home/aaronang/.oh-my-zsh

# Theme
ZSH_THEME="fishy"

# Plugins 
plugins=(git cabal)

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# User configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:$HOME/.local/bin"
source $ZSH/oh-my-zsh.sh

# Nix
. /home/aaronang/.nix-profile/etc/profile.d/nix.sh

# Zsh autocomplete improvements
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

# Aliases
#unalias vi
#alias vim='vimx'
