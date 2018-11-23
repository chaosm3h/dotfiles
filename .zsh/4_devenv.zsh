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

### tensorflow ###
#export CUDA_HOME="/usr/local/cuda"
#export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:$CUDA_HOME/lib"
#export PATH="$CUDA_HOME/bin:$PATH"

