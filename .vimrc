syntax enable
colorscheme murphy
filetype plugin on

set nocompatible
set encoding=utf-8
set number relativenumber
set splitbelow splitright
set tabstop=4
set softtabstop=4
set autoindent
set expandtab
set shiftwidth=4
set textwidth=79
set showmatch
set matchtime=3
set backspace=indent,eol,start
set modifiable
set fileformat=unix
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set path+=**
set wildmenu
set hlsearch
set incsearch
set autoread

let g:netrw_liststyle=3

let mapleader = " "

nnoremap <c-h> <c-w><c-h>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap - <c-w>5-
nnoremap = <c-w>5+
nnoremap _ <c-w>25<
nnoremap + <c-w>25>

inoremap <c-h> <c-w><c-h>
inoremap <c-j> <c-w><c-j>
inoremap <c-k> <c-w><c-k>
inoremap <c-l> <c-w><c-l>

tnoremap <c-h> <c-w><c-h>
tnoremap <c-j> <c-w><c-j>
tnoremap <c-k> <c-w><c-k>
tnoremap <c-l> <c-w><c-l>

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

" PHP
inoremap <?= <?=  ?><left><left><left>
inoremap <?p <?php  ?><left><left><left>
inoremap <?p<CR> <?php<CR>?><ESC>O

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
