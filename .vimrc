if !has('nvim')
  " Vim specific commands
endif

if has('nvim')
  " Neovim specific commands
endif

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Plugin Section
" Plug 'mangeshrex/uwu.vim'
Plug 'srcery-colors/srcery-vim'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'dense-analysis/ale'

call plug#end()

if (has("termguicolors"))
  set termguicolors
endif

set background=dark
colorscheme srcery

" Lightline settings
let g:lightline = {
      \ 'colorscheme': 'srcery_drk',
      \ }

set number      " Show line numbers
set linebreak   " Break lines at word (requires Wrap lines)
set showbreak=+++       " Wrap-broken line prefix
set textwidth=80        " Line wrap (number of cols)
set showmatch   " Highlight matching brace
set visualbell  " Use visual bell (no beeping)

set hlsearch    " Highlight all search results
set smartcase   " Enable smart-case search
set ignorecase  " Always case-insensitive
set incsearch   " Searches for strings incrementally

set autoindent  " Auto-indent new lines
set expandtab   " Use spaces instead of tabs
set shiftwidth=2        " Number of auto-indent spaces
set smartindent " Enable smart-indent
set smarttab    " Enable smart-tabs
set tabstop=2   " Number of spaces per Tab
set softtabstop=2       " Number of spaces per Tab

set ruler       " Show row and column ruler information

set undolevels=1000     " Number of undo levels
set backspace=indent,eol,start  " Backspace behaviour

tnoremap <Esc> <C-\><C-n>

" allow mouse for pasting etc
set mouse=a

"Keep 7 lines visible at the top and bottom of the screen when scrolling
set so=7

" use n and N to center the next search result on the screen
nmap n nzz
nmap N Nzz

" show whitespace
set list
set listchars=tab:>.,trail:.

filetype on
syntax on

autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE

set noshowmode

