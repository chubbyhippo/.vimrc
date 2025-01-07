syntax enable
colorscheme murphy
filetype plugin on

set belloff=all
set grepprg=grep\ -HIRin\ $*\ .
set autoindent
set autoread
set backspace=indent,eol,start
set clipboard^=unnamed,unnamedplus
set encoding=utf-8
set fileencoding=utf-8
set expandtab
set fileformat=unix
set hidden
set hlsearch
set incsearch
set matchtime=3
set modifiable
set nocompatible
set number relativenumber
set path+=**
set shiftwidth=4
set showmatch
set showcmd
set softtabstop=4
set splitbelow splitright
set tabstop=4
set textwidth=120
set wildmenu

" Begin the statusline
set laststatus=2                        " Ensures the statusline is always visible
set statusline=%<                       " Truncate the text if it's too long
set statusline+=%f                      " Full file path and name
set statusline+=\ %h                    " Help flag '[help]'
set statusline+=\ %r                    " Readonly flag '[readonly]'
set statusline+=\ %m                    " Modified flag '[+]'
set statusline+=%=                      " Right-align everything following this
" Add file type, format, and encoding information
set statusline+=%y                      " File type (e.g., python)
set statusline+=[%{&fileformat}]        " File format (unix/dos/mac)
set statusline+=[%{&fileencoding}]      " File encoding (utf-8, etc.)
" Add line/column and percentage formatting
set statusline+=\ %-14.(%l,%c%V%)       " Line number, column, virtual column
set statusline+=\ [%P]                  " Percentage of the file read

let g:netrw_liststyle=3

imap jj <esc>

nnoremap <space> :noh<cr> 
let mapleader = " "
nnoremap <leader><leader> <c-^>
nnoremap <leader>ap :Explore<cr>
nnoremap <leader>aq :copen<cr>
nnoremap <leader>at :terminal<cr>
nnoremap <leader>eV :e $MYVIMRC<cr>
nnoremap <leader>h :only<cr>
nnoremap <leader>sf :find<space>
nnoremap <leader>st :copen<bar>:grep<space>
nnoremap <leader>sV :source $MYVIMRC<cr>
nnoremap <leader>b :buffers<cr>:buffer<space>
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>Q :q!<cr>

nnoremap - <c-w>5-
nnoremap = <c-w>5+
nnoremap _ <c-w>25<
nnoremap + <c-w>25>

nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-s-h> <c-w>H
nnoremap <c-s-j> <c-w>J
nnoremap <c-s-k> <c-w>K
nnoremap <c-s-l> <c-w>L

inoremap <c-h> <c-w>h
inoremap <c-j> <c-w>j
inoremap <c-k> <c-w>k
inoremap <c-l> <c-w>l

nnoremap <c-s-h> <c-w>H
nnoremap <c-s-j> <c-w>J
nnoremap <c-s-k> <c-w>K
nnoremap <c-s-l> <c-w>L

tnoremap <c-h> <c-w>h
tnoremap <c-j> <c-w>j
tnoremap <c-k> <c-w>k
tnoremap <c-l> <c-w>l

nnoremap <c-d> <c-d>zz
nnoremap <c-u> <c-u>zz
