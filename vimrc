"lang and codeset
"----------------------------------------------------------------------------
set enc=utf-8
set fileencodings=ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932,utf-8
set fileformats=unix,dos,mac
set langmenu=japanese

"visual
"----------------------------------------------------------------------------
filetype plugin indent on
set number
set showmode
set showmatch
set ruler
set nowrap
"set wrap

syntax on

set guicursor=a:blinkon0
highlight SpecialKey guifg=#0000BB

set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<

" %< - 行が長すぎるときに切り詰める位置
" %f - ファイル名（相対パス）
" %F - ファイル名（絶対パス）
" %t - ファイル名（パス無し)
"
" %m - 修正フラグ （[+]または[-]）
" %r - 読み込み専用フラグ（[RO]）
" %h - ヘルプバッファ
" %w - preview window flag
"
" %{'['.(&fenc!=''?&fenc:&enc).']['.&fileformat.']'} - fileencodingとfileformatを表示
"
" %= - 左寄せと右寄せ項目の区切り（続くアイテムを右寄せにする）
" %l - 現在のカーソルの行番号
" %L - 総行数
" %c - column番号
" %V - カラム番号
" %P - カーソルの場所 %表示
"
"set statusline=%F%9(\%m%r%)%h%w\ [%Y]\[%{&ff}]\[%{&fenc}]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%l/%L]
set statusline=[%n]\ %f%9(\%m%r%)%h%w[%Y][%{&ff}:%{&fenc!=''?&fenc:&enc}]%=\ %4l,%4v%5(\ %)[%3p%%]
set laststatus=2

"key map
"----------------------------------------------------------------------------
inoremap <C-c> <ESC>

"edit
"----------------------------------------------------------------------------
set nobackup
set autoindent
set cindent

set imi=0
set ims=0

"tab
"----------------------------------------------------------------------------
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2

"no beep
"----------------------------------------------------------------------------
set visualbell t_vb=

