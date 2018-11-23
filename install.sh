#!/bin/bash
brew install hub
brew install tmux
brew install reattach-to-user-namespace

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
    git clone https://github.com/riywo/ndenv ~/.ndenv
fi
if [ ! -d ~/.ndenv/plugins/node-build ]; then
    git clone https://github.com/riywo/node-build.git ~/.ndenv/plugins/node-build
fi

sudo cp ./.tmux/bin/wifi /usr/local/bin/wifi
sudo cp ./.tmux/bin/battery /usr/local/bin/battery
