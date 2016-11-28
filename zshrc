export ZSH=/home/aaronang/.oh-my-zsh

ZSH_THEME="fishy"

COMPLETION_WAITING_DOTS="true"

plugins=(git ubuntu)

source $ZSH/oh-my-zsh.sh

if [[ $TERMINIX_ID ]]; then
  source /etc/profile.d/vte.sh
fi

export PATH=~/.npm-global/bin:$PATH
