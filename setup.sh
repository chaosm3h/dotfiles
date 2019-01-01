#!/bin/bash
if [ ! -f /usr/local/bin/nvim ]; then
    brew install neovim
fi
if [ ! -f /usr/local/bin/zsh ]; then
    brew install zsh
fi
if [ ! -f /usr/local/bin/hub ]; then
    brew install hub
fi
if [ ! -f /usr/local/bin/tmux ]; then
    brew install tmux
fi
if [ ! -f /usr/local/bin/reattach-to-user-namespace ]; then
    brew install reattach-to-user-namespace
fi
if [ ! -f /usr/local/bin/direnv ]; then
    brew install direnv
fi
if [ ! -f /usr/local/bin/peco ]; then
    brew install peco
fi

# git clone
if [ ! -d ~/.goenv ]; then
    git clone https://github.com/syndbg/goenv.git ~/.goenv
fi
if [ ! -d ~/.pyenv ]; then
    git clone https://github.com/pyenv/pyenv.git ~/.pyenv
fi
if [ ! -d ~/.pyenv/plugins/pyenv-virtualenv ]; then
    git clone https://github.com/pyenv/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
fi
if [ ! -d ~/.ndenv ]; then
    git clone https://github.com/riywo/ndenv.git ~/.ndenv
fi
if [ ! -d ~/.ndenv/plugins/node-build ]; then
    git clone https://github.com/riywo/node-build.git ~/.ndenv/plugins/node-build
fi

if [ ! -d ~/src/fork ]; then
    mkdir ~/src/fork
    git clone https://github.com/chaosm3h/dotfiles-1.git ~/src/fork/dotfiles
    git clone https://github.com/chaosm3h/osx-terminal.app-colors-solarized.git ~/src/fork/terminal.solarize
    sudo cp ~/src/fork/dotfiles/.tmux/bin/wifi /usr/local/bin/wifi
    sudo cp ~/src/fork/dotfiles/.tmux/bin/battery /usr/local/bin/battery
fi
if [ ! -d ~/src/other ]; then
    mkdir ~/src/other
    git clone https://github.com/edihbrandon/RictyDiminished.git ~/src/other/RictyDiminished
fi

source ./link.sh

