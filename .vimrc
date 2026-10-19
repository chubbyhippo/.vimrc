set nocompatible

syntax enable
colorscheme habamax
filetype plugin on

" Use terminal cursor shapes where DECSCUSR escape sequences are supported.
if has('cursorshape') && (&term =~# 'xterm' || &term ==# 'win32')
    let &t_SI = "\e[6 q" " Steady bar in Insert mode
    let &t_SR = "\e[4 q" " Steady underline in Replace mode
    let &t_EI = "\e[2 q" " Steady block in Normal mode
    let &t_ti ..= "\e[2 q" " Start Vim with a steady block cursor
    let &t_te ..= "\e[0 q" " Restore the terminal's default cursor on exit
endif

" --------------------
" General editor behavior
" --------------------
set belloff=all
if executable('rg')
    set grepprg=rg\ --vimgrep\ -uu\ $*
    set grepformat=%f:%l:%c:%m
endif
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
set ignorecase smartcase
set wildmode=longest:full,full
set scrolloff=5 sidescrolloff=5
set signcolumn=yes
set confirm
set completeopt=menuone,noinsert,noselect
set splitkeep=screen
set nowrap
set list listchars=tab:»\ ,trail:·,nbsp:␣
set mouse=a
set diffopt+=vertical
set ttimeout ttimeoutlen=100
set undofile
call mkdir(expand('~/.vim/undo'), 'p')
set undodir=$HOME/.vim/undo//

" --------------------
" Files and directories to ignore during wildcard expansion
" --------------------
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
let g:netrw_browse_split = 3    " Open file in a new tab
let g:netrw_altv = 1            " Place the split window on the left
let g:netrw_liststyle = 3       " Use tree-style view
let g:netrw_winsize = 25        " Set netrw window size to 25% of Vim

" --------------------
" Insert-mode shortcuts
" --------------------
imap jj <Esc>                   " Quickly leave insert mode by typing jj

" --------------------
" Surround selection
" --------------------
vnoremap ` c`<Esc>pa`<Esc>
vnoremap ' c'<Esc>pa'<Esc>
vnoremap " c"<Esc>pa"<Esc>
vnoremap ( c(<Esc>pa)<Esc>
vnoremap ) c(<Esc>pa)<Esc>
vnoremap [ c[<Esc>pa]<Esc>
vnoremap ] c[<Esc>pa]<Esc>
vnoremap { c{<Esc>pa}<Esc>
vnoremap } c{<Esc>pa}<Esc>

" --------------------
" Leader key and common actions
" --------------------
nnoremap <Space> :noh<Cr>       " Clear highlighted search results with Space
let mapleader = " "             " Use Space as the leader key

nnoremap <Leader><Leader> <C-^> " Switch to the alternate file
nnoremap <Leader>Q :q!<Cr>      " Force quit current window
nnoremap <Leader>aP :lcd<space>%:p:h<bar>:Lexplore<Cr>
nnoremap <Leader>ap :Lexplore<Cr>
nnoremap <Leader>aq :copen<Cr>  " Open quickfix list
nnoremap <Leader>at :terminal<Cr>
nnoremap <Leader>bb :buffers<cr>:buffer<Space>
nnoremap <Leader>bk :q<Cr>
nnoremap <Leader>co :tabonly<Cr>
nnoremap <Leader>dh :noh<Cr>
nnoremap <Leader>eV :e $MYVIMRC<Cr>
nnoremap <Leader>fs :w<Cr>
nnoremap <Leader>h :only<Cr>
nnoremap <Leader>m :marks<cr>:'
nnoremap <Leader>op :Lexplore<Cr>
nnoremap <Leader>ot :terminal<Cr>
nnoremap <Leader>qq :q<Cr>
nnoremap <Leader>sV :source $MYVIMRC<Cr>
nnoremap <Leader>sf :find<Space>
nnoremap <Leader>st :copen<bar>:grep<Space>

" --------------------
" Window navigation
" --------------------
nnoremap <Leader>wh <C-W>h
nnoremap <Leader>wj <C-W>j
nnoremap <Leader>wk <C-W>k
nnoremap <Leader>wl <C-W>l
nnoremap <Leader>wq :q<Cr>
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
nnoremap <C-w> :q<Cr>

" --------------------
" Tab navigation
" --------------------
nnoremap <C-.> gt
nnoremap <C-,> gT
nnoremap <Tab> gt
nnoremap <S-Tab> gT

" --------------------
" Window resizing
" --------------------
nnoremap - <C-W>5-
nnoremap = <C-W>5+
nnoremap _ <C-W>25<
nnoremap + <C-W>25>

" --------------------
" Keep cursor centered while scrolling
" --------------------
nnoremap <C-D> <C-D>zz
nnoremap <C-U> <C-U>zz

" Automatically remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e