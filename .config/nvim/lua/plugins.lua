return {
  -- Core Utility Plugins (tpope collection - no dedicated config needed)
  'tpope/vim-commentary',
  'tpope/vim-surround',
  'tpope/vim-repeat',
  'tpope/vim-fugitive',

  -- Code/Language Features
  -- semshi
  {'numirias/semshi', run = ':UpdateRemotePlugins'},

  -- nvim-treesitter (Requires :TSUpdate after installation)
  {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},

  -- coc.nvim (LSP/Completion)
  {'neoclide/coc.nvim',
    branch = 'release',
    config = function()
      -- === START: USER MAPPING FUNCTIONS (From your existing setup) ===
      local function map(mode, shortcut, command)
        -- The 'noremap' and 'silent' options are included in the options table
        vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
      end

      local function nmap(shortcut, command)
        map('n', shortcut, command)
      end

      -- === COC.NVIM MAPPINGS (Incorporated) ===

      -- GoTo code navigation.
      nmap("gd", "<Plug>(coc-definition)")
      nmap("gy", "<Plug>(coc-type-definition)")
      nmap("gi", "<Plug>(coc-implementation)")
      nmap("gr", "<Plug>(coc-references)")

      -- Diagnostic navigation
      nmap("<C-j>", "<Plug>(coc-diagnostic-next)")
      nmap("<C-k>", "<Plug>(coc-diagnostic-prev)")

      -- Documentation Hover (K and gh mappings)
      nmap("K", ":lua show_coc_documentation()<CR>")
      nmap("gh", ":lua show_coc_documentation()<CR>")

      -- === COC SETTINGS AND HELPER FUNCTION ===

      vim.g.coc_global_extensions = { 'coc-ultisnips' }

      -- Helper function definition
      vim.cmd([[
        lua << EOF
          local M = {}
          function M.show_documentation()
            if vim.bo.filetype == 'vim' then
              vim.cmd('help ' .. vim.fn.expand('<cword>'))
            else
              vim.fn.CocAction('doHover')
            end
          end
          -- Assign the function globally so the nmap command can find it
          _G.show_coc_documentation = M.show_documentation
        EOF
      ]])
    end,
  },

  -- Supertab
  {'ervandew/supertab',
    config = function()
        vim.g.SuperTabDefaultCompletionType = '<C-n>'
    end,
  },

  -- Go Utilities
  'ojroques/nvim-osc52', -- For clipboard interaction

  -- Telescope
  'nvim-lua/plenary.nvim', -- lua helpers (dependency)
  'nvim-telescope/telescope.nvim',
  'kyazdani4ani42/nvim-web-devicons', -- Icons

  -- Snippets
  {'SirVer/ultisnips',
    dependencies = {'honza/vim-snippets'},
    config = function()
      vim.g.UltiSnipsExpandTrigger = '<C-g>'
      vim.g.UltiSnipsJumpForwardTrigger = '<tab>'
      vim.g.UltiSnipsJumpBackwardTrigger = '<s-tab>'
    end,
  },

  -- Navigation and Status
  'vim-airline/vim-airline',

  -- NERDTree (Settings and autocmd are local)
  {'scrooloose/nerdtree',
    config = function()
      vim.g.NERDTreeShowLineNumbers = 1

      vim.api.nvim_create_autocmd("FileType", {
        pattern = "nerdtree",
        callback = function()
          vim.opt_local.relativenumber = true
        end,
      })
    end,
  },

  -- ctrlp.vim
  {'ctrlpvim/ctrlp.vim',
    config = function()
      vim.g.ctrlp_user_command = { '.git', 'cd %s && git ls-files -co --exclude-standard' }
    end,
  },

  -- Version Control
  'airblade/vim-gitgutter',

  -- vim-signify
  {'mhinz/vim-signify',
    config = function()
      vim.g.signify_skip_filename_pattern = { [".pipertmp.*"] = true }
    end,
  },

  -- Utils
  -- Goyo and Limelight
  {'junegunn/goyo.vim',
    dependencies = {'junegunn/limelight.vim'},
    config = function()
      vim.g.goyo_width = '85%'
      vim.g.goyo_height = '85%'

      local goyo = {}

      function goyo.enter()
        vim.opt.number = true
        vim.opt.relativenumber = true
      end

      vim.api.nvim_create_autocmd("User", {
        pattern = "GoyoEnter",
        callback = goyo.enter,
        nested = true,
      })
    end,
  },

  -- vim-tmux-navigator
  {'christoomey/vim-tmux-navigator',
    config = function()
      vim.g.tmux_navigator_no_mappings = 1
      vim.g.tmux_navigator_disable_when_zoomed = 1
    end,
  },
  'farmergreg/vim-lastplace',

  -- Colorschemes
  'junegunn/seoul256.vim',
  'joshdick/onedark.vim',
  'nerdpad/dracula-vim',
  'kaicataldo/material.vim',
  'hzchirs/vim-material',
  'dunckr/vim-monokai-soda',
  'morhetz/gruvbox',
  'sainnhe/everforest',
  'NLKNguyen/papercolor-theme',
}
