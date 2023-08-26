" set shell=/bin/bash\ -i

set guicursor=
set colorcolumn=120

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

let mapleader = ","
