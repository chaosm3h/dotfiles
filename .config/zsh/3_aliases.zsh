# tmux
alias tl='tmux list-session'
alias tn='tmux new-session'
alias tk='tmux kill-session -a'
alias ta='tmux attach-session'

# git
alias git='hub'
alias   g='git'
alias  ga='git add'
alias  gb='git branch'
alias gba='git branch -a'  # list branches
alias gco='git checkout'
alias  gc='git commit'
alias gcm='git commit -m'
alias  gd='git diff'
alias  gf='git fetch'
alias  gg='git grep'
alias  gl='git log --color --graph --decorate --oneline'
alias  gp='git pull'
alias  gs='git status'
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
alias dcp='docker-compose'
alias  dm='docker-machine'
alias  dr='docker run'

# devenv
alias pv='pyenv versions'
alias gv='goenv versions'
alias nv='nvm ls'
alias s2a='saml2aws'

# python
alias ph='python -m http.server'
alias jn='jupyter-notebook'
alias pe='pyenv'

# vim
alias bf='cat > ~/.cache/bf'
alias bfcat='cat ~/.cache/bf'
alias v='nvim'

# base
alias ll="ls -lAh --time-style=+%Y-%m-%d\ %H:%M:%S --color=auto"
alias po="popd"
alias e="exit"
alias tf="terraform"

# gcloud
alias gpl='gcloud projects list'
alias gcl='gcloud config list'
alias gcsp='gcloud config set project'
alias gp='gcloud components'

# etc
alias mkm1='~/src/fork/qmk_firmware;v keyboards/crkbd/keymaps/chaosm3h/keymap.c;make crkbd:chaosm3h:avrdude;po'
alias mkm2='~/src/fork/qmk_firmware;v keyboards/dz60/keymaps/chaosm3h/keymap.c;make dz60:chaosm3h:dfu;po'
alias pupeco='"$(find . -type d | peco)"'
alias lza='less ~/.config/zsh/3_aliases.zsh'
alias zz='source ~/.zshrc'
alias cra='create-react-app'
