# vim
## help
:h vimtutor -> 30分の演習
:h +feature-list -> vimの機能ON/OFF一覧
:h operator

## Nomal mode
### Cursor
- w/W : 次の単語の頭
- e/E : 次の単語の末
- b/B : 前の単語の頭
- H/M/L : ウィンドウ内で上中下段移動

### Scroll
- Ctrl-b : 上に一画面
- Ctrl-y : 上に一行
- Ctrl-e : 下に一行
- Ctrl-f : 下に一画面

### Delete
- C : c$
- s : cl
- S : ^C, cc
- I : ^i
- A : $a
- daw : delete current word

### Search

# tmux
## COPY MODE

- Prefix + [ : コピーモード
- v          : コピー開始
 - Ctrl + vv : 矩形選択で開始
 - Shift + v : 行選択で開始
- y | Enter  : ヤンク
- Prefix + p : ペースト
