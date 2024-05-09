let g:mapleader = ";"

scriptencoding utf-8
set encoding=utf-8
set fileencoding=utf-8

set number
set relativenumber

set title
set autoindent
set smartindent
set hlsearch
set nobackup
set noswapfile
set showcmd
set cmdheight=1
set laststatus=2
set expandtab
set scrolloff=10
set backupskip+=/tmp/*,/private/tmp/*
set inccommand=split
set ignorecase
set smarttab
set breakindent
set shiftwidth=4
set tabstop=4
set nowrap
set backspace=start,eol,indent
set path+=**

set splitbelow
set splitright
set splitkeep=cursor
set mouse=a

let &t_Cs = "\e[4:3m"
let &t_Ce = "\e[4:0m"

set formatoptions+=r

autocmd BufNewFile,BufRead *.astro set filetype=astro
autocmd BufNewFile,BufRead Podfile set filetype=ruby

if has("nvim-0.8")
  set cmdheight=0
endif

nnoremap + <C-a>
nnoremap - <C-x>
nnoremap dw vb"_d

nnoremap ;l :nohlsearch<CR>

nnoremap sv :split<CR>
nnoremap ss :vsplit<CR>

nnoremap K 7k
nnoremap J 7j
vnoremap J 7j
vnoremap K 7k

nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L $

vnoremap > >gv
vnoremap < <gv

nnoremap S :w<CR>
nnoremap Q :q<CR>
