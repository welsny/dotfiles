call plug#begin('~/.config/nvim/plugged')
" All plugins migrated to lazy.nvim (lua/plugins.lua)
call plug#end()

syntax enable

" colo dracula
" colo gruvbox

let mapleader=','

" Ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

let g:ale_linters = {'python': ['mypy', 'flake8']}
let g:ale_python_mypy_options = '--follow-imports skip'
let g:ale_fixers = {'python': ['black']}
let g:ale_flake8_options = 'max-line-length = 120'

" set hidden

let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "passive_filetypes": ["java"] }

" signcolumn, documentation, and keymaps moved to lua/plugins.lua (coc config) or lua/settings.lua

let g:UltiSnipsExpandTrigger='<C-g>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'

let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'

let g:tmux_navigator_no_mappings = 1
let g:tmux_navigator_disable_when_zoomed = 1

function! s:goyo_enter()
  set nu
  set rnu
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
