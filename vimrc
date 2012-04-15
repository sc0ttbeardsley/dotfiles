
"blink back to closing bracket
set showmatch
"change tabs to spaces
"set expandtab

"use tabs not spaces and make tabs the same size as 3 spaces
set tabstop=3
"put four spaces in each time tab is entered
"set softtabstop=4

"Number of space chars for indentation
set shiftwidth=3

set noautoindent

if &t_Co > 1
	syntax enable
endif

source ~/.vim/syntax/python.vim
