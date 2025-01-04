syntax enable
colorscheme murphy
filetype plugin on

set autoindent
set autoread
set backspace=indent,eol,start
set clipboard^=unnamed,unnamedplus
set encoding=utf-8
set expandtab
set fileformat=unix
set hidden
set hlsearch
set incsearch
set laststatus=2
set matchtime=3
set modifiable
set nocompatible
set number relativenumber
set path+=**
set shiftwidth=4
set showmatch
set softtabstop=4
set splitbelow splitright
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set tabstop=4
set textwidth=79
set wildmenu

let g:netrw_liststyle=3

imap jj <esc>

let mapleader = " "
nnoremap <leader><leader> <c-^>
nnoremap <leader>eV :e $MYVIMRC<cr>
nnoremap <leader>sV :source $MYVIMRC<cr>
nnoremap <leader>b :buffers<cr>:buffer<space>

nnoremap - <c-w>5-
nnoremap = <c-w>5+
nnoremap _ <c-w>25<
nnoremap + <c-w>25>

nnoremap <c-s-q> :q<cr>
nnoremap <c-s-w> :w<cr>

nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-s-j> <c-w>J
nnoremap <c-s-l> <c-w>L

inoremap <c-h> <c-w>h
inoremap <c-j> <c-w>j
inoremap <c-k> <c-w>k
inoremap <c-l> <c-w>l

nnoremap <c-s-h> <c-w>H
nnoremap <c-s-j> <c-w>J
nnoremap <c-s-k> <c-w>K
inoremap <c-s-l> <c-w>L

tnoremap <c-h> <c-w>h
tnoremap <c-j> <c-w>j
tnoremap <c-k> <c-w>k
tnoremap <c-l> <c-w>l

nnoremap <c-d> <c-d>zz
nnoremap <c-u> <c-u>zz

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap () ()
inoremap [ []<left>
inoremap [<CR> [<CR>]<ESC>O
inoremap [;<CR> [<CR>];<ESC>O
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

if $MSYSTEM =~ 'MINGW'
    let &t_ti.="\e[1 q"
    let &t_SI.="\e[5 q"
    let &t_EI.="\e[1 q"
    let &t_te.="\e[0 q"
endif
