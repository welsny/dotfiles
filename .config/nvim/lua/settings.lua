-- This is just a shortcut that allows us to use `o` as an alias for `vim.opt`
local o = vim.opt

o.guicursor = ""
o.colorcolumn = "120"
o.shell = "/bin/bash -i"

o.number = true
o.relativenumber = true
o.cursorline = true
o.wrap = false
o.expandtab = true
o.tabstop = 4
o.shiftwidth = 4
o.ignorecase = true
o.smartcase = true
o.autochdir = true
o.updatetime=100

function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

function tmap(shortcut, command)
  map('t', shortcut, command)
end

nmap("j", "gj")
nmap("k", "gk")

imap("jk", "<Esc>")
imap("<C-a>", "<C-o>^")
imap("<C-e>", "<C-o>$")
imap("<C-u>", "<C-o>d^")
imap("<C-k>", "<C-o>d$")
imap("<C-w>", "<C-o>db")
imap("<M-b>", "<C-o>b")
imap("<M-f>", "<C-o>e<C-o>l")
imap("<M-d>", "<C-o>de<C-o>x")

o.splitbelow = true
o.splitright = true

nmap("<M-o>", "<C-w>w")
-- nmap("<C-h>", "<C-w>h")
-- nmap("<C-j>", "<C-w>j")
-- nmap("<C-k>", "<C-w>k")
-- nmap("<C-l>", "<C-w>l")

nmap("<M-h>", ":TmuxNavigateLeft<CR>")
nmap("<M-j>", ":TmuxNavigateDown<CR>")
nmap("<M-k>", ":TmuxNavigateUp<CR>")
nmap("<M-l>", ":TmuxNavigateRight<CR>")
-- TODO: Fix conflicts with SKHD
nmap("<M-i>", ":Goyo<CR>")
nmap("<M-Space>", "<C-w>r")

-- tmap jk <Esc>
tmap("<Esc>", "<C-\\><C-n>")
tmap("<M-o>", "<C-w>w")
tmap("<M-h>", "<C-\\><C-n><C-w>h")
tmap("<M-j>", "<C-\\><C-n><C-w>j")
tmap("<M-k>", "<C-\\><C-n><C-w>k")
tmap("<M-l>", "<C-\\><C-n><C-w>l")

vim.api.nvim_create_user_command('Fish', 'split term://fish', {})
vim.api.nvim_create_user_command('Python', 'split term://python', {})
vim.api.nvim_create_user_command('Python3', 'split term://python3', {})
vim.api.nvim_create_user_command('PythonI', 'split term://ipython', {})
vim.api.nvim_create_user_command('R', 'split term://R', {})

-- `Send` (Visual mode copy to other window)
vim.api.nvim_set_keymap('v', '<C-s>', 'y<C-w>wp<C-w>p', { noremap = true })

-- Disable Ex mode:
nmap("Q", "<Nop>")

-- NERDTree & GitGutter
nmap("<CR>", ":NERDTreeToggle<CR>")
nmap("<C-m>", ":NERDTreeToggle<CR>")
nmap("<C-g>", ":GitGutterToggle<CR>")

-- Enable syntax highlighting
vim.cmd('syntax enable')

-- Set leader key
vim.g.mapleader = ','
