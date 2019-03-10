### k8s ###
source <(kubectl completion zsh)

### pyenv ###
export PYENV_ROOT="${HOME}/.pyenv"
if [ -d "${PYENV_ROOT}" ]; then
    export PATH=${PYENV_ROOT}/bin:$PATH
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi

### node environment ###
export NDENV_ROOT="${HOME}/.ndenv"
if [ -d "${NDENV_ROOT}" ]; then
    export PATH=${NDENV_ROOT}/bin:$PATH
    eval "$(ndenv init -)"
fi

### golang environment ###
export GOENV_ROOT="${HOME}/.goenv"
if [ -d "${GOENV_ROOT}" ]; then
    export PATH=${GOENV_ROOT}/bin:$PATH
    export GOPATH=${HOME}/go
    eval "$(goenv init -)"
fi

### direnv ###
export EDITOR=/usr/bin/vim
eval "$(direnv hook zsh)"

### tensorflow ###
#export CUDA_HOME="/usr/local/cuda"
#export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:$CUDA_HOME/lib"
#export PATH="$CUDA_HOME/bin:$PATH"

