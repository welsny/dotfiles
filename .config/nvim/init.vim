call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

Plug 'Valloric/YouCompleteMe'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'

Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'hdima/python-syntax'
Plug 'sickill/vim-monokai'
Plug 'junegunn/seoul256.vim'

call plug#end()

syntax enable

colorscheme seoul256

set number
set cursorline
set colorcolumn=120

set nobackup

let python_highlight_all=1

let g:ycm_key_list_select_completion=['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-k>', '<Up>']
let g:SuperTabDefaultCompletionType='<C-j>'

let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'

map <C-t> :NERDTreeToggle<CR>

inoremap <C-h> <C-o>h
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>l

nnoremap <C-j> <C-d>
nnoremap <C-k> <C-u>

noremap <C-[> <C-t>

noremap <j> gj
noremap <k> gk

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
