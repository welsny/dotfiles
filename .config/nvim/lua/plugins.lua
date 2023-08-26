function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

-- GoTo code navigation.
nmap("gd", "<Plug>(coc-definition)")
nmap("gy", "<Plug>(coc-type-definition)")
nmap("gi", "<Plug>(coc-implementation)")
nmap("gr", "<Plug>(coc-references)")

nmap("<C-j>", "<Plug>(coc-diagnostic-next)")
nmap("<C-k>", "<Plug>(coc-diagnostic-prev)")
