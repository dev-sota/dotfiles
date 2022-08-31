syntax enable

let &t_ti.="\e[2 q"
let &t_SI.="\e[6 q"
let &t_EI.="\e[2 q"
let &t_te.="\e[0 q"
let mapleader="\<Space>"

set nobackup
set noswapfile
set nocompatible
set visualbell t_vb=
set noerrorbells
set number
set scrolloff=5
set hlsearch
set cursorline
set smartindent
set clipboard=unnamed
set backspace=indent,eol,start
set whichwrap=b,s,h,l,<,>,[,],~
set rtp+=/opt/homebrew/opt/fzf

noremap <S-l> $
noremap <S-h> 0
nnoremap Y y$
inoremap <silent> jj <ESC>
vnoremap p "_dP

nnoremap x "_x
vnoremap x "_x
nnoremap X "_X
vnoremap X "_X

nnoremap s "_s
vnoremap s "_s
nnoremap S "_S
vnoremap S "_S

nnoremap c "_c
vnoremap c "_c
nnoremap C "_C
vnoremap C "_C

nnoremap d "_d
vnoremap d "_d
nnoremap D "_D
vnoremap D "_D

nnoremap <leader>d "+d
vnoremap <leader>d "+d
nnoremap <leader>D "+D
vnoremap <leader>D "+D
