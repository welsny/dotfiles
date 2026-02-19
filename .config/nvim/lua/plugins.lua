return {
  -- Group A: TPope Utilities (Safe to migrate)
  'tpope/vim-commentary',
  'tpope/vim-surround',
  'tpope/vim-repeat',
  'tpope/vim-fugitive',

  -- UI/Colors
  'junegunn/seoul256.vim',
  'joshdick/onedark.vim',
  'nerdpad/dracula-vim',
  'kaicataldo/material.vim',
  'hzchirs/vim-material',
  'dunckr/vim-monokai-soda',
  'morhetz/gruvbox',
  'sainnhe/everforest',
  'NLKNguyen/papercolor-theme',
  'nvim-tree/nvim-web-devicons',

  -- Navigation
  'christoomey/vim-tmux-navigator',

  -- Group B: UI Utilities
  {
    'scrooloose/nerdtree',
    init = function()
      vim.g.NERDTreeShowLineNumbers = 1
      vim.g.NERDTreeNodeDelimiter = "\u{00a0}"
    end
  },
  {
    'junegunn/goyo.vim',
    dependencies = { 'junegunn/limelight.vim' },
    init = function()
      vim.g.goyo_width = '85%'
      vim.g.goyo_height = '85%'
    end
  },
  'airblade/vim-gitgutter',
  {
    'mhinz/vim-signify',
    config = function()
      -- Fix for E1098: Use raw Vimscript to set the pattern exactly as expected
      vim.cmd([[let g:signify_skip_filename_pattern = { '\.pipertmp.*': 1 }]])
    end
  },
  'vim-airline/vim-airline',
  'farmergreg/vim-lastplace',

  -- Final Group: Language & Complex Plugins
  -- semshi
  {'numirias/semshi', build = ':UpdateRemotePlugins'},

  -- nvim-treesitter
  {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},

  -- coc.nvim (LSP/Completion)
  {'neoclide/coc.nvim',
    branch = 'release',
    config = function()
      local function map(mode, shortcut, command)
        vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
      end
      local function nmap(shortcut, command)
        map('n', shortcut, command)
      end

      -- GoTo code navigation
      nmap("gd", "<Plug>(coc-definition)")
      nmap("gy", "<Plug>(coc-type-definition)")
      nmap("gi", "<Plug>(coc-implementation)")
      nmap("gr", "<Plug>(coc-references)")

      -- Diagnostic navigation
      nmap("<C-j>", "<Plug>(coc-diagnostic-next)")
      nmap("<C-k>", "<Plug>(coc-diagnostic-prev)")

      -- Documentation Hover
      nmap("K", ":call Show_coc_documentation()<CR>")
      nmap("gh", ":call Show_coc_documentation()<CR>")

      vim.g.coc_global_extensions = { 'coc-ultisnips' }

      -- Documentation helper
      _G.Show_coc_documentation = function()
        if vim.bo.filetype == 'vim' then
          vim.cmd('help ' .. vim.fn.expand('<cword>'))
        else
          vim.fn.CocAction('doHover')
        end
      end
    end,
  },

  -- Snippets & Completion
  'honza/vim-snippets',
  {
    'ervandew/supertab',
    config = function()
      vim.g.SuperTabDefaultCompletionType = '<C-n>'
    end
  },

  -- Telescope
  'nvim-lua/plenary.nvim',
  'nvim-telescope/telescope.nvim',
  'ctrlpvim/ctrlp.vim',
  'ojroques/nvim-osc52',
}
