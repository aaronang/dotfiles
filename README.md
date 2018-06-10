# Dotfiles

## Getting Started

```bash
# Clone, initialize, and update Git submodules
$ git clone git@github.com:aaronang/dotfiles.git
$ cd dotfiles
$ git submodule update --init --recursive

# Install Oh My Zsh
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Set up Pure
$ mkdir -p ~/.zfunctions
$ ln -s pure/pure.zsh ~/.zfunctions/pure.zsh
$ ln -s pure/async.zsh ~/.zfunctions/async.zsh

# Create symbolic links
$ ln -s .zshrc ~/.zshrc
$ ln -s .hyper.js ~/.hyper.js
```