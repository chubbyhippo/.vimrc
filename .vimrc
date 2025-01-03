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

imap jj <esc>

let mapleader = " "
nnoremap <leader>eV :e $MYVIMRC<cr>
nnoremap <leader>sV :source $MYVIMRC<cr>

nnoremap - <c-w>5-
nnoremap = <c-w>5+
nnoremap _ <c-w>25<
nnoremap + <c-w>25>

nnoremap <c-h> <c-w><c-h>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-s-j> :sp<cr>
nnoremap <c-s-l> :vs<cr>

inoremap <c-h> <c-w><c-h>
inoremap <c-j> <c-w><c-j>
inoremap <c-k> <c-w><c-k>
inoremap <c-l> <c-w><c-l>
inoremap <c-s-j> <esc>:sp<cr>
inoremap <c-s-l> <esc>:vs<cr>

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

if $MSYSTEM =~ 'MINGW'
    let &t_ti.="\e[1 q"
    let &t_SI.="\e[5 q"
    let &t_EI.="\e[1 q"
    let &t_te.="\e[0 q"
endif
