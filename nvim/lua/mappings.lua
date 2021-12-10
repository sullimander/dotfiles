-- functions to make mappings easier to write/read
function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function vmap(shortcut, command)
  map('v', shortcut, command)
end

-- Use ctrl+h,j,k,l to navigate splits
nmap('<C-J>', '<C-W><C-J>')
nmap('<C-K>', '<C-W><C-K>')
nmap('<C-L>', '<C-W><C-L>')
nmap('<C-H>', '<C-W><C-H>')

-- Reselect visual block after indent/outdent
vmap('<', '<gv')
vmap('>', '>gv')


-- Plugin mappings

-- Fugitive
nmap('<leader>a', ':Git add %<cr>')

-- Telescope
nmap('<leader>t', '<cmd>Telescope find_files<cr>')
nmap('<leader>r', '<cmd>Telescope buffers<cr>')
nmap('<leader>f', '<cmd>Telescope live_grep<cr>')
