" MIT License
" 
" Copyright (c) 2020 Gabriel Piveta Giachini
" 
" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the 'Software'), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
" 
" The above copyright notice and this permission notice shall be included in all
" copies or substantial portions of the Software.
" 
" THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
" SOFTWARE.

set nocompatible
filetype off

" Install plugins
call plug#begin('~/.config/nvim/plugged') 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'  
Plug 'morhetz/gruvbox'  
Plug 'ryanoasis/vim-devicons'
call plug#end()

syntax on
filetype plugin on
filetype plugin indent on

" Set Colorscheme as Gruvbox
colorscheme gruvbox 

set exrc
set secure

" Tab configuration
set tabstop=4
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set hidden

" Set both line absolute and relative number
set number relativenumber

" Enable true color
set termguicolors

" Set UTF-8 encoding
set encoding=UTF-8

" No Tab expansion in Makefiles
autocmd FileType make set noexpandtab

map <F2> :NERDTreeToggle<CR>
map <Leader>mm :wa<CR> :make<CR>
map <Leader>md :wa<CR> :make all-debug<CR>
map <Leader>mc :wa<CR> :make clean<CR>
map <Leader>mk :wa<CR> :make
map <Leader>s :wa<CR>
map <Leader>w :w<CR>
map <Leader>f :NERDTreeToggle<CR>
map <Leader>r :NERDTreeFocus<CR>RR

" Disable arrows
cnoremap <Down> <Nop>
cnoremap <Left> <Nop>
cnoremap <Right> <Nop>
cnoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>

" Customize Airline
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts=1
