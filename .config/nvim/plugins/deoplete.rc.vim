" === deoplete ======================================================
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_completion_start_length = 1

" === deoplete-jedi =================================================
let g:deoplete#sources#jedi#server_timeout=100
let g:deoplete#sources#jedi#statement_length=100
" jedi本体の補完は切る（deoplete-jediで非同期処理をしてくれるため）
let g:jedi#completions_enabled = 0

