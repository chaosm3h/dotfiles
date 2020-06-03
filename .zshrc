#!/usr/local/bin/zsh

for f in ~/.config/zsh/[0-9]*.(sh|zsh)
do
    source "$f"
done
