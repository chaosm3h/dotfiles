
" === gruvbox =======================================================
colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark = 'soft'
set t_Co=256            " gruvboxをカラースキーマにするときに必要！
let g:ligthline = { 'colorscheme': 'gruvbox' }
let g:gruvbox_number_column='bg1'

" === deoplete ======================================================
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_completion_start_length = 1

" === deoplete-jedi =================================================
let g:deoplete#sources#jedi#server_timeout=100
let g:deoplete#sources#jedi#statement_length=100
" jedi本体の補完は切る（deoplete-jediで非同期処理をしてくれるため）
let g:jedi#completions_enabled = 0

" === airline =======================================================
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline#extensions#tabline#enabled = 1 " タブの有効化
let g:airline#extensions#tabline#buffer_idx_mode = 1 " タブNoの有効化
let g:airline#extensions#tabline#fnamemod = ':t' " 
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#tabline#formatter = 'default'

" unicode symbols
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.maxlinenr = ''
"let g:airline_symbols.branch = '⎇'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" Theme ( github.com/vim-airline/vim-airline-themes
let g:airline_theme= 'gruvbox'

