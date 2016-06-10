call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-commentary'

Plug 'sickill/vim-monokai'
Plug 'junegunn/seoul256.vim'

call plug#end()

syntax enable

colorscheme seoul256

set number
set cursorline
set colorcolumn=120

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
