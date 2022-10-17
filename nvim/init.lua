require('plugins')
require('settings')
require('mappings')
require('theme')

-- plugin specific config
require('better-whitespace-config')
require('formatter-config')
require('gitsigns-config')
require('go-config')
require('lsp-config')
require('lualine-config')
require('telescope-config')
require('treesitter-config')

-- simple plugin setup
require('colorizer').setup()
require('lsp_signature').setup()
require('nvim-surround').setup()
require('nvim-web-devicons').setup({ default = true })
