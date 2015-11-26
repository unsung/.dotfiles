set nocompatible

execute pathogen#infect()

let mapleader=","
set t_Co=256
syntax on
filetype plugin indent on

colorscheme molokai

autocmd FileType make setlocal noexpandtab


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

set foldmethod=indent
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf
