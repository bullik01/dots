call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs' 
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
" color theme
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

call plug#end()

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif 

syntax on
let g:mapleader=','
let NERDTreeShowHidden=1
"set background=dark
"colorscheme nord
"colorscheme gruvbox
set mouse=a
set number
set expandtab
set tabstop=2

set hlsearch
set incsearch

map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)

vmap cc :norm i#<CR>
vmap uc :norm ^x<CR>

