alias lza='less ~/.zsh/3_aliases.zsh'
alias zz='source ~/.zshrc'

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
alias di='docker image'
alias  dc='docker container'
alias dcl='docker container ls -a'

# devenv
alias pv='pyenv versions'
alias piup='pip install --upgrade pip'
alias gv='goenv versions'
alias nv='ndenv versions'

# base
alias ll="ls -al"
alias pu="pushd"
alias po="popd"
alias e="exit"
alias tf="terraform"

alias cdp='pu "$(find . -type d | peco)"'

