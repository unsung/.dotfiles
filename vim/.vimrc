set nocompatible

filetype off
call vundle#rc()
    Bundle 'nvie/vim-flake8'
    Bundle 'scrooloose/nerdcommenter'
    Bundle 'othree/html5.vim'
    Bundle 'Glench/Vim-Jinja2-Syntax'
"call vundle#end()
filetype plugin indent on

let mapleader='\'
set t_Co=256
syntax on

hi Normal ctermbg=NONE
hi Folded ctermbg=NONE

set mouse=a

set number
set cul
set nohlsearch
set incsearch
set ignorecase
set ruler
set showmatch
set visualbell

set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround 
set expandtab
set smartindent
set smarttab
set nowrap

set laststatus=2
set showtabline=2
set noshowmode

nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

nmap <leader><CR> O<Esc>
nmap <CR> o<Esc>

if has("gui_running")
    colorscheme molokai
endif

let g:ycm_autoclose_preview_window_after_completion=1
noremap <silent>  <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let g:powerline_pycmd='python3'
