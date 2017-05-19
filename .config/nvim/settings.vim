set number
set relativenumber
set cursorline
set colorcolumn=120
set nowrap

set expandtab
set tabstop=4
set shiftwidth=4
set ignorecase
set smartcase

noremap <j> gj
noremap <k> gk

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

inoremap jk <esc>

inoremap <C-a> <C-o>^
inoremap <C-e> <C-o>$
inoremap <C-u> <C-o>d^
inoremap <C-k> <C-o>d$
inoremap <C-w> <C-o>db
inoremap <A-b> <C-o>b
inoremap <A-f> <C-o>e<C-o>l
inoremap <A-d> <C-o>de<C-o>x

nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>

set splitbelow
set splitright

command Fish split term://fish
command Python split term://python
command R split term://R

vnoremap <C-s> y<c-w>wp<c-w>p

