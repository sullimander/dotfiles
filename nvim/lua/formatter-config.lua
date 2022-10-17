require('formatter').setup {
  filetype = {
    go = { require('formatter.filetypes.go').goimports },
    lua = { require('formatter.filetypes.lua').stylua }
    -- ruby = { require('formatter.filetypes.ruby').rubocop }
  }
}

-- augroup FormatAutogroup
--   autocmd!
--   autocmd BufWritePost * FormatWrite
-- augroup END
local augroup = vim.api.nvim_create_augroup('FormatAutogroup', {clear = true})
vim.api.nvim_create_autocmd('BufWritePost', {
  pattern = '*',
  group = augroup,
  command = 'FormatWrite'
})
