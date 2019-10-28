call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'

" Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'zxqfl/tabnine-vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'

Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

Plug 'sheerun/vim-polyglot'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

Plug 'junegunn/seoul256.vim'
Plug 'joshdick/onedark.vim'
Plug 'nerdpad/dracula-vim'
Plug 'kaicataldo/material.vim'
Plug 'hzchirs/vim-material'
Plug 'dunckr/vim-monokai-soda'
Plug 'morhetz/gruvbox'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'vimwiki/vimwiki'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

syntax enable

colo dracula
colo gruvbox

let mapleader=','

" Ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

let g:ale_linters = {'python': ['mypy', 'flake8']}
let g:ale_python_mypy_options = '--follow-imports skip'
let g:ale_fixers = {'python': ['black']}
let g:ale_flake8_options = 'max-line-length = 120'

let g:SuperTabDefaultCompletionType='<C-n>'
let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'

let NERDTreeShowLineNumbers = 1
autocmd FileType nerdtree setlocal rnu

let g:tmux_navigator_no_mappings = 1
let g:tmux_navigator_disable_when_zoomed = 1

let g:goyo_width='85%'
let g:goyo_height='70%'

function! s:goyo_enter()
  set nu
  set rnu
endfunction

function! s:goyo_leave()
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()

