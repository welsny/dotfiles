" set shell=/bin/bash\ -i

set guicursor=
set colorcolumn=120

nnoremap <M-o> <C-w>w
" nnoremap <C-h> <C-w>h
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-l> <C-w>l

nnoremap <silent> <M-h> :TmuxNavigateLeft<CR>
nnoremap <silent> <M-j> :TmuxNavigateDown<CR>
nnoremap <silent> <M-k> :TmuxNavigateUp<CR>
nnoremap <silent> <M-l> :TmuxNavigateRight<CR>
" TODO: Fix conflicts with SKHD
nnoremap <silent> <M-i> :Goyo<CR>
nnoremap <silent> <M-Space> <C-w>r

nnoremap <CR> :NERDTreeToggle<CR>
map <C-m> :NERDTreeToggle<CR>
map <C-g> :GitGutterToggle<CR>

set shell=/bin/bash\ -i

command Fish split term://fish
command Python split term://python
command Python3 split term://python3
command PythonI split term://ipython
command R split term://R

" `Send`
vnoremap <C-s> y<c-w>wp<c-w>p

tmap jk <Esc>
tnoremap <Esc> <C-\><C-n>
tnoremap <M-o> <C-w>w
tnoremap <M-h> <C-\><C-n><C-w>h
tnoremap <M-j> <C-\><C-n><C-w>j
tnoremap <M-k> <C-\><C-n><C-w>k
tnoremap <M-l> <C-\><C-n><C-w>l

