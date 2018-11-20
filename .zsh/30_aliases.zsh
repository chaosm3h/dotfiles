if has 'hub'; then
    alias git='hub'
fi

if has 'git'; then
  alias g='git'
  alias gs='git status'
  alias gb='git branch'
  alias gc='git checkout'
  alias gct='git commit'
  alias gg='git grep'
  alias ga='git add'
  alias gd='git diff'
  alias gl='git log'
  alias gcma='git checkout master'
  alias gfu='git fetch upstream'
  alias gfo='git fetch origin'
  alias gmod='git merge origin/develop'
  alias gmud='git merge upstream/develop'
  alias gmom='git merge origin/master'
  alias gcm='git commit -m'
  alias gpo='git push origin'
  alias gpom='git push origin master'
  alias gst='git stash'
  alias gsl='git stash list'
  alias gsu='git stash -u'
  alias gsp='git stash pop'
fi

alias ll="ls -al"
alias pu="pushd"
alias po="popd"

alias v='vim'
alias vz="vim ~/.zshrc"
alias zz='source ~/.zshrc'


