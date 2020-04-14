# git
alias git='hub'
alias g='git'
alias ga='git add'
alias gb='git branch'
alias gba='git branch -a'  # list branches
alias gch='git checkout'
alias gchb='git checkout -b' # make new branch
alias gchm='git checkout master'
alias gcm='git commit'
alias gcmm='git commit -m'
alias gd='git diff'
alias gfu='git fetch upstream'
alias gfo='git fetch origin'
alias gg='git grep'
alias gl='git log --color --graph --decorate --oneline'
alias gmod='git merge origin/develop'
alias gmud='git merge upstream/develop'
alias gmom='git merge origin/master'
alias gmum='git merge upstream/master'
alias gpo= 'git push origin'
alias gpoh='git push origin HEAD'
alias gpom='git pull origin master'
alias gs='git status'
alias gst='git stash'
alias gsl='git stash list'
alias gsu='git stash -u'
alias gsp='git stash pop'

# docker
alias d='docker'
alias dcn='docker container'
alias dcl='docker container ls -a'
alias  di='docker images'
alias  ds='docker stop'
alias dps='docker ps'
alias dri='docker rmi'
alias  dm='docker-machine'
alias dcm='docker-compose'

# k8s
alias k='kubectl'

# devenv
alias pv='pyenv versions'
alias gv='goenv versions'
alias nv='nvm ls'

# vim
alias bf='cat > ~/.cache/bf'
alias bfcat='cat ~/.cache/bf'
alias v='nvim'
alias cheet='nvim ~/src/chaosm3h/dotfiles/cheets.md'

# base
alias ll="ls -lAh --time-style=+%Y-%m-%d\ %H:%M:%S --color=auto"
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
alias ph='python -m http.server'
alias jn='jupyter-notebook'
