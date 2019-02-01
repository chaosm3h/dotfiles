# git
alias git='hub'
alias g='git'
alias gs='git status'
alias gb='git branch'
alias gg='git grep'
alias ga='git add'
alias gl='git log --color --graph --decorate --oneline'
alias gd='git diff'
alias gch='git checkout'
alias gchb='git checkout -b'
alias gchm='git checkout master'
alias gct='git commit'
alias gcm='git commit -m'
alias gfu='git fetch upstream'
alias gfo='git fetch origin'
alias gmod='git merge origin/develop'
alias gmud='git merge upstream/develop'
alias gmom='git merge origin/master'
alias gpo='git push origin'
alias gpom='git push origin master'
alias gst='git stash'
alias gsl='git stash list'
alias gsu='git stash -u'
alias gsp='git stash pop'

# docker
alias  di='docker image'
alias dcn='docker container'
alias dcl='docker container ls -a'
alias  dm='docker-machine'
alias dcm='docker-compose'

# devenv
alias pv='pyenv versions'
alias piup='pip install --upgrade pip'
alias gv='goenv versions'
alias nv='ndenv versions'

# vim
alias bf='cat > ~/.cache/bf'
alias bfcat='cat ~/.cache/bf'
alias v='nvim'
alias cheet='nvim ~/src/chaosm3h/dotfiles/cheets.md'

# base
alias ll="ls -al"
alias pu="pushd"
alias po="popd"
alias e="exit"
alias tf="terraform"

# etc
alias mkm1='pu ~/src/fork/qmk_firmware;v keyboards/crkbd/keymaps/chaosm3h/keymap.c;make crkbd:chaosm3h:avrdude;po'
alias mkm2='pu ~/src/fork/qmk_firmware;v keyboards/dz60/keymaps/chaosm3h/keymap.c;make dz60:chaosm3h:dfu;po'
alias pupeco='pu "$(find . -type d | peco)"'
alias lza='less ~/.zsh/3_aliases.zsh'
alias zz='source ~/.zshrc'

