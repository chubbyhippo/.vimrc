syntax on
let python_hightlight_all=1
filetype plugin on
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3

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
set fileformat=unix
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set path+=**
set wildmenu

nnoremap <c-h> <c-w><c-h>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap - <c-w>5-
nnoremap = <c-w>5+
nnoremap _ <c-w>25<
nnoremap + <c-w>25>
nnoremap <esc><esc> :w<cr>

inoremap <c-h> <c-w><c-h>
inoremap <c-j> <c-w><c-j>
inoremap <c-k> <c-w><c-k>
inoremap <c-l> <c-w><c-l>
inoremap <esc><esc> <esc>:w<cr>

tnoremap <c-h> <c-w><c-h>
tnoremap <c-j> <c-w><c-j>
tnoremap <c-k> <c-w><c-k>
tnoremap <c-l> <c-w><c-l>

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
call plug#end()

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"
imap <c-space> <Plug>(asyncomplete_force_refresh)

autocmd BufWritePre * %s/\s\+$//e
autocmd FileType yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2
