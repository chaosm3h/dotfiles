if &compatible
  set nocompatible
endif
set termguicolors

" dein settings-----------------
let s:dein_cache_path = expand('~/.cache/nvim/dein')
let s:dein_dir = s:dein_cache_path . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~ '/dein.vim'
  if !isdirectory(s:dein_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_dir
  endif
  execute 'set runtimepath+=' . fnamemodify(s:dein_dir, ':p')
endif

if dein#load_state(s:dein_cache_path)
  call dein#begin(s:dein_cache_path)

  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy' : 0})
  call dein#load_toml('~/.config/nvim/deinlazy.toml', {'lazy' : 1})
  call dein#load_toml('~/.config/nvim/deinft.toml')

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif
" end dein settings-------------------

filetype plugin indent on
"syntax enable

runtime! ./options.rc.vim
runtime! ./keymap.rc.vim
runtime! ./functions.rc.vim
