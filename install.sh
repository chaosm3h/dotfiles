#!/bin/bash
brew install hub
brew install tmux
brew install reattach-to-user-namespace

sudo cp ./.tmux/bin/wifi /usr/local/bin/wifi
sudo cp ./.tmux/bin/battery /usr/local/bin/battery

