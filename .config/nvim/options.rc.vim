set hidden " 編集中でもファイルを開く
set autoread " 他で編集したファイルを自動で再読み込み
set scrolloff=5 " スクロール時の余白行数
set sidescrolloff=6
set cursorline " カーソルラインの強調表示を有効化
set number " 行番号を表示
set wildmenu wildmode=list:full " 補完時の一覧表示機能有効化
set fenc=utf-8 "文字コードをUFT-8に設定
set nobackup " バックアップファイルを作らない
set noswapfile " スワップファイルを作らない
" set laststatus=2 " ステータスラインを常に表示
" set statusline=%F%r%h%=%l:%c(%p%%) " ステータスラインの内容
set helplang=ja,en " helpの日本語化
filetype plugin indent on
let g:python_host_prog = '~/.pyenv/versions/2.7.15/bin/python'
let g:python3_host_prog = '~/.pyenv/versions/3.7.1/bin/python'

" 検索＆置換系-------------------
set incsearch " インクリメンタル検索を有効化
set ignorecase " 検索時に大文字小文字の区別はしない
set smartcase
set wrapscan
set inccommand=split

" タブ系-------------------------
set expandtab " タブは半角スペース
set tabstop=4 " タブ文字の変換空白数
set smarttab
set shiftwidth=4 " 自動インデント時の設定空白数
set shiftround " シフトしたときにshiftwidthの倍数になるように
set softtabstop=4 " タブ入力時の挿入空白数

" 自動的に閉じ括弧を入力
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>
"中間バッファファイルを使ってコピペ
imap <C-b> <ESC>:read ~/.cache/bf<CR>i
nmap <C-b> :read ~/.cache/bf<CR>
vmap <C-b> :w!~/.cache/bf<CR>

