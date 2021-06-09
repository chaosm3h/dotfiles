### gh ###
eval "$(gh completion -s zsh)"

### pyenv ###
export PYENV_ROOT="${HOME}/.pyenv"
if [ -d "${PYENV_ROOT}" ]; then
    export PATH=${PYENV_ROOT}/bin:$PATH
    eval "$(pyenv init --path)"
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi

### nvm ###
export NVM_DIR="$HOME/.config/nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

### golang environment ###
# export GOENV_ROOT="${HOME}/.goenv"
# if [ -d "${GOENV_ROOT}" ]; then
#    export PATH=${GOENV_ROOT}/bin:$PATH
#    export GOPATH=${HOME}/go
#    eval "$(goenv init -)"
# fi

### haskell ###
export GHCUP_DIR="$HOME/.ghcup/env"
[ -f GHCUP_DIR ] && source GHCUP_DIR # ghcup-env
export PATH="$HOME/.cabal/bin:$HOME/.ghcup/bin:$PATH"

### direnv ###
export EDITOR=/usr/bin/vim
eval "$(direnv hook zsh)"

### jumanpp ###
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
