#!/usr/local/bin/zsh

for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue

    ln -s $PWD/$f ~/$f
    echo "linked $f"
done

ln -s $PWD/.config/nvim ~/.config/nvim

sudo cp .tmux/bin/wifi /usr/local/bin/
sudo chmod 755 /usr/local/bin/wifi
sudo cp .tmux/bin/battery /usr/local/bin/
sudo chmod 755 /usr/local/bin/battery
