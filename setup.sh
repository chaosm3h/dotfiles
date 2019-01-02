#!/bin/bash
if [ ! -f /usr/local/bin/nvim ] && brew install neovim
if [ ! -f /usr/local/bin/zsh ] && brew install zsh
if [ ! -f /usr/local/bin/hub ] && brew install hub
if [ ! -f /usr/local/bin/tmux ] && brew install tmux
if [ ! -f /usr/local/bin/reattach-to-user-namespace ] && brew install reattach-to-user-namespace
if [ ! -f /usr/local/bin/direnv ] && brew install direnv
if [ ! -f /usr/local/bin/peco ] && brew install peco

# git clone
if [ ! -d ~/.goenv ] && git clone https://github.com/syndbg/goenv.git ~/.goenv
if [ ! -d ~/.pyenv ] && git clone https://github.com/pyenv/pyenv.git ~/.pyenv
if [ ! -d ~/.pyenv/plugins/pyenv-virtualenv ] && git clone https://github.com/pyenv/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
if [ ! -d ~/.ndenv ] && git clone https://github.com/riywo/ndenv.git ~/.ndenv
if [ ! -d ~/.ndenv/plugins/node-build ] && git clone https://github.com/riywo/node-build.git ~/.ndenv/plugins/node-build

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

# link files
for f in .??*
do
    [ "$f" == ".git" ] && continue
    [ "$f" == ".DS_Store" ] && continue
    [ "$f" == ".config" ] && continue
    if [ ! -L ~/$f ]; then
        ln -s $PWD/$f ~/$f
        echo "linked...~/$f"
    fi
done

for f in .config/*
do
    [ "$f" == ".DS_Store" ] && continue
    if [ ! -d ~/.config/nvim ]; then
        ln -s $PWD/.config/nvim ~/.config/nvim
        echo "linked...~/$f"
    fi
done

# copy etc modules
if [ ! -f /usr/local/bin/wifi ]; then
    sudo cp .tmux/bin/wifi /usr/local/bin/
    sudo chmod 755 /usr/local/bin/wifi
    echo "copied wifi module"
fi
if [ ! -f /usr/local/bin/battery ]; then
    sudo cp .tmux/bin/battery /usr/local/bin/
    sudo chmod 755 /usr/local/bin/battery
    echo "copied battery module"
fi

