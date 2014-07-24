syn on

"common conf {{

set ai
set bs=2
set showmatch
set laststatus=2

set expandtab
set shiftwidth=4
set tabstop=4

set cursorline
set number
set autoread

set ignorecase
set fileencodings=utf-8,gbk

set hls
set helplang=cn
" set foldmethod=syntax

"}}


" conf for tabs
let mapleader = ','
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <leader>t : tabe<CR>


" conf for plugins {{

" site: https://github.com/tpope/vim-pathogen
" pathogen {
call pathogen#infect()
"}

" site: https://github.com/Lokaltog/vim-powerline
" powerline {
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set t_Co=256
let g:Powerline_symbols = 'fancy'
"}

" site: https://github.com/scrooloose/nerdtree
" conf for NERDTree
map <C-t> :NERDTreeToggle<CR>

"}}

