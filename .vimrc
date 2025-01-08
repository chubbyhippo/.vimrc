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

imap jj <Esc>

nnoremap <Space> :noh<Cr> 
let mapleader = " "
nnoremap <Leader><Leader> <C-^>
nnoremap <Leader>ap :Explore<Cr>
nnoremap <Leader>aq :copen<Cr>
nnoremap <Leader>at :terminal<Cr>
nnoremap <Leader>eV :e $MYVIMRC<Cr>
nnoremap <Leader>h :only<Cr>
nnoremap <Leader>sf :find<space>
nnoremap <Leader>st :copen<bar>:grep<space>
nnoremap <Leader>sV :source $MYVIMRC<Cr>
nnoremap <Leader>b :buffers<cr>:buffer<space>
nnoremap <Leader>w :w<Cr>
nnoremap <Leader>q :q<Cr>
nnoremap <Leader>Q :q!<Cr>

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
