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

nnoremap <M-o> <C-w>w
" nnoremap <C-h> <C-w>h
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-l> <C-w>l

nnoremap <silent> <M-h> :TmuxNavigateLeft<CR>
nnoremap <silent> <M-j> :TmuxNavigateDown<CR>
nnoremap <silent> <M-k> :TmuxNavigateUp<CR>
nnoremap <silent> <M-l> :TmuxNavigateRight<CR>

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

