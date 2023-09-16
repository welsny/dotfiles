-- This is just a shortcut that allows us to use `o` as an alias for `vim.opt`
local o = vim.opt

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

-- Disable Ex mode:
nmap("Q", "<Nop>")
