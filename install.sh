#!/bin/bash
brew install hub
brew install tmux
brew install reattach-to-user-namespace
brew install goenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
git clone https://github.com/pyenv/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv

git clone https://github.com/riywo/ndenv ~/.ndenv
git clone https://github.com/riywo/node-build.git ~/.ndenv/plugins/node-build

sudo cp ./.tmux/bin/wifi /usr/local/bin/wifi
sudo cp ./.tmux/bin/battery /usr/local/bin/battery

