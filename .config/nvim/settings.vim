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

inoremap jk <Esc>
inoremap <C-a> <C-o>^
inoremap <C-e> <C-o>$
inoremap <C-u> <C-o>d^
inoremap <C-k> <C-o>d$
inoremap <C-w> <C-o>db
inoremap <M-b> <C-o>b
inoremap <M-f> <C-o>e<C-o>l
inoremap <M-d> <C-o>de<C-o>x

set splitbelow
set splitright

nnoremap <M-h> <C-w>h
nnoremap <M-j> <C-w>j
nnoremap <M-k> <C-w>k
nnoremap <M-l> <C-w>l

command Fish split term://fish
command Python split term://python
command Python3 split term://python3
command PythonI split term://ipython
command R split term://R

vnoremap <C-s> y<c-w>wp<c-w>p

tmap jk <Esc>
tnoremap <Esc> <C-\><C-n>
tnoremap <M-h> <C-\><C-n><C-w>h
tnoremap <M-j> <C-\><C-n><C-w>j
tnoremap <M-k> <C-\><C-n><C-w>k
tnoremap <M-l> <C-\><C-n><C-w>l

