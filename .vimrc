""""""""""""""""""""""""""""""""
" General stuff
""""""""""""""""""""""""""""""""

" How many lines vim has to remember
set history=700

" Enable filetype plugin
filetype plugin on
filetype indent on

" Detect when a file is changed from the outside
set autoread


""""""""""""""""""""""""""""""""
" Vim UI
""""""""""""""""""""""""""""""""

" Give the cursor this many lines when moving vertically
set so=5

" Turn on WiLd menu
set wildmenu
set wildignore=*.o,*~,*.pyc

" Show current position
set ruler

" Set the command bar height
set cmdheight=2

" Fix backspace
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" No redraw when doing macros for performance
set lazyredraw

" Regex
set magic

" Show matching brackets when hovering over them
set showmatch

" How many tenths of a second it takes to blink matching braces
set mat=1

" Don't yell at me when I screw up
set noerrorbells
set novisualbell
set tm=500


""""""""""""""""""""""""""""""""
" Colors and shit
""""""""""""""""""""""""""""""""

" Syntax highlighting
syntax enable

" Use hella colors
set t_Co=256

" Color scheme and background
colorscheme molokai
"set background=dark

" UTF-8
set encoding=utf8

" Standard file type
set ffs=unix,mac,dos


""""""""""""""""""""""""""""""""
" Whitespace
""""""""""""""""""""""""""""""""

" Use spaces
set expandtab
set smarttab

" Set tab width (in spaces)
set shiftwidth=4
set tabstop=4

" Wrap lines
set wrap

" Auto/smart indent
set ai
set si

" Line numbers
"set nu


""""""""""""""""""""""""""""""""
" Navigation
""""""""""""""""""""""""""""""""

" When moving up and down on line wraps, treat them as their own line
map j gj
map k gk
map <Down> gj
map <Up> gk

" Using Ctrl+Up and Ctrl+Down moves the screen but not the cursor
map <c-Up> <C-y>
map <c-Down> <C-e>

" When reopening files, go to the last editted position -- GENIUS
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif


