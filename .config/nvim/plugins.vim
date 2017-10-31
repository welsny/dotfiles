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
Plug 'airblade/vim-gitgutter'

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

Plug 'hdima/python-syntax'
Plug 'ivanov/vim-ipython'

Plug 'junegunn/seoul256.vim'
Plug 'dunckr/vim-monokai-soda'
Plug 'vimwiki/vimwiki'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

syntax enable

colorscheme seoul256

let mapleader=','

let python_highlight_all=1

let g:SuperTabDefaultCompletionType='<C-n>'
let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'

map <C-m> :NERDTreeToggle<CR>
let NERDTreeShowLineNumbers = 1
autocmd FileType nerdtree setlocal rnu

map <C-g> :GitGutterToggle<CR>

let g:tmux_navigator_no_mappings = 1
let g:tmux_navigator_disable_when_zoomed = 1

let g:goyo_width='70%'
let g:goyo_height='70%'
function! s:goyo_enter()
  set rnu
endfunction

