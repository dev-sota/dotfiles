syntax enable
colorscheme molokai

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

if has('vim_starting')
    let &t_SI .= "\e[6 q"
    let &t_EI .= "\e[2 q"
endif

noremap <S-h> 0
noremap <S-l> $
nnoremap Y y$
inoremap <silent> jj <ESC>

nnoremap x "_x
vnoremap x "_x
nnoremap X "_X
vnoremap X "_X

nnoremap s "_s
vnoremap s "_s
nnoremap S "_S
vnoremap S "_S

nnoremap d "_d
vnoremap d "_d
nnoremap D "_D
vnoremap D "_D
