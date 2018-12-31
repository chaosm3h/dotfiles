set nocompatible
" [Backspace] で既存の文字を削除できるように設定
set backspace=start,eol,indent
" 特定のキーに行頭および行末の回りこみ移動を許可する設定
set whichwrap=b,s,[,],<,>,~
set mouse=a " マウス機能有効化
syntax on " シンタックスハイライト
set nohlsearch " 検索キーワードをハイライトしないように設定
set cursorline " カーソルラインの強調表示を有効化
set number " 行番号を表示
set laststatus=2 " ステータスラインを常に表示
set statusline=%F%r%h%=%l:%c(%p%%) " ステータスラインの内容
set incsearch " インクリメンタル検索を有効化
set ignorecase " 検索時に大文字小文字の区別はしない
set wildmenu wildmode=list:full " 補完時の一覧表示機能有効化
"set runtimepath+=~/.vim/ " 自動的にファイルを読み込むパスを設定 ~/.vim/userautoload/*vim
"runtime! userautoload/*.vim
set fenc=utf-8 "文字コードをUFT-8に設定
set nobackup " バックアップファイルを作らない
set noswapfile " スワップファイルを作らない
set autoread " 編集中のファイルが変更されたら自動で読み直す
" 自動的に閉じ括弧を入力
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>
imap <C-b> <ESC>:read ~/.vim/bf<CR>i
nmap <C-b> :read ~/.vim/bf<CR>
vmap <C-b> :w!~/.vim/bf<CR>

