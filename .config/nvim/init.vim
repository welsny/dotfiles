call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'Valloric/YouCompleteMe'

Plug 'hdima/python-syntax'
Plug 'sickill/vim-monokai'
Plug 'junegunn/seoul256.vim'

call plug#end()

syntax enable

colorscheme seoul256

set number
set cursorline
set colorcolumn=120

let python_highlight_all=1

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
