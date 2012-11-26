"lang and codeset
"----------------------------------------------------------------------------
if has('mac')
	set fileencodings=iso-2022-jp,sjis,euc-jp,utf-8
	set fileformats=unix,dos,mac
	set langmenu=japanese
endif

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

"edit
"----------------------------------------------------------------------------
set nobackup
set autoindent
set cindent

set imi=0
set ims=0

"tab
"----------------------------------------------------------------------------
set shiftwidth=2
set tabstop=2

"no beep
"----------------------------------------------------------------------------
set visualbell t_vb=

