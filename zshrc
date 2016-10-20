export ZSH=/home/aaronang/.oh-my-zsh

ZSH_THEME="fishy"

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

if [[ $TERMINIX_ID ]]; then
        source /etc/profile.d/vte.sh
fi

