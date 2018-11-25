#!/bin/bash
brew install zsh
brew install hub
brew install tmux
brew install reattach-to-user-namespace
brew install direnv

# git clone
if [ ! -d ~/.goenv ]; then
    hub clone syndbg/goenv ~/.goenv
fi
if [ ! -d ~/.pyenv ]; then
    hub clone pyenv/pyenv ~/.pyenv
fi
if [ ! -d ~/.pyenv/plugins/pyenv-virtualenv ]; then
    hub clone pyenv/pyenv-virtualenv ~/.pyenv/plugins/pyenv-virtualenv
fi
if [ ! -d ~/.ndenv ]; then
    hub clone riywo/ndenv ~/.ndenv
fi
if [ ! -d ~/.ndenv/plugins/node-build ]; then
    hub clone riywo/node-build ~/.ndenv/plugins/node-build
fi

sudo cp ./.tmux/bin/wifi /usr/local/bin/wifi
sudo cp ./.tmux/bin/battery /usr/local/bin/battery

source ./link.sh
