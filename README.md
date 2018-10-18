# Dotfiles

## Getting Started

```shell
# Install Oh My Zsh
▲ sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install IBM Plex Mono
▲ git clone https://github.com/IBM/plex.git
▲ cp plex/IBM-Plex-Mono/fonts/complete/ttf/*.ttf /Library/Fonts

# Install Spaceship theme
▲ git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
▲ ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Clone repository and create symbolic links
▲ git clone https://github.com/aaronang/dotfiles.git
▲ cd dotfiles
▲ ln -s $(pwd)/.zshrc ~/.zshrc
```

> Note: Machine-specific environment variables should be exported in `~/.zshrc.local`.
