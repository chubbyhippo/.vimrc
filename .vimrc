syntax enable
colorscheme desert
filetype plugin on

set belloff=all
set grepprg=grep\ -HIRin\ $*\ .
set autoindent
set autoread
set backspace=indent,eol,start
set clipboard^=unnamed,unnamedplus
set cursorline
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
set textwidth=79
set wildmenu
set wildignore=*/.git/*
set wildignore+=*.swp,*.bak,*.tmp,*.log
set wildignore+=*.o,*.obj,*.out,*.exe,*.class
set wildignore+=*/node_modules/*
set wildignore+=*/dist/*

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

" --------------------
" Netrw Configuration
" --------------------
let g:netrw_browse_split = 4    " Open netrw in a vertical split
let g:netrw_altv = 1            " Place the split window on the left
let g:netrw_liststyle = 3       " Use tree-style view
let g:netrw_winsize = 25        " Set netrw window size to 25% of Vim


imap jj <Esc>

nnoremap <Space> :noh<Cr> 
let mapleader = " "
nnoremap <Leader><Leader> <C-^>
nnoremap <Leader>ap :Lexplore<Cr>
nnoremap <Leader>aP :lcd<space>%:p:h<bar>:Lexplore<Cr>
nnoremap <Leader>aq :copen<Cr>
nnoremap <Leader>at :terminal<Cr>
nnoremap <Leader>eV :e $MYVIMRC<Cr>
nnoremap <Leader>h :only<Cr>
nnoremap <Leader>m :marks<cr>:'
nnoremap <Leader>sf :find<Space>
nnoremap <Leader>st :copen<bar>:grep<Space>
nnoremap <Leader>sV :source $MYVIMRC<Cr>
nnoremap <Leader>b :buffers<cr>:buffer<Space>
nnoremap <Leader>w :w<Cr>
nnoremap <Leader>q :q<Cr>
nnoremap <Leader>Q :q!<Cr>

nnoremap - <C-W>5-
nnoremap = <C-W>5+
nnoremap _ <C-W>25<
nnoremap + <C-W>25>

nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-S-H> <C-W>H
nnoremap <C-S-J> <C-W>J
nnoremap <C-S-K> <C-W>K
nnoremap <C-S-L> <C-W>L

inoremap <C-H> <C-W>h
inoremap <C-J> <C-W>j
inoremap <C-K> <C-W>k
inoremap <C-L> <C-W>l

nnoremap <C-S-H> <C-W>H
nnoremap <C-S-J> <C-W>J
nnoremap <C-S-K> <C-W>K
nnoremap <C-S-L> <C-W>L

tnoremap <C-H> <C-W>h
tnoremap <C-J> <C-W>j
tnoremap <C-K> <C-W>k
tnoremap <C-L> <C-W>l

nnoremap <C-D> <C-D>zz
nnoremap <C-U> <C-U>zz

" Automatically remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

