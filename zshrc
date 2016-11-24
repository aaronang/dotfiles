export ZSH=/home/aaronang/.oh-my-zsh

ZSH_THEME="fishy"

COMPLETION_WAITING_DOTS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

if [[ $TERMINIX_ID ]]; then
        source /etc/profile.d/vte.sh
fi

export GOPATH=/home/aaronang/Code/go
export PATH=$PATH:$GOPATH/bin
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export PATH="$PATH:$HOME/Applications/android-studio/bin"
export PATH=~/.npm-global/bin:$PATH

