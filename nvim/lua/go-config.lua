-- configure the vim-go plugin
vim.g.go_fmt_command = 'goimports'
vim.g.go_highlight_fields = 1
vim.g.go_highlight_function_calls = 1
vim.g.go_highlight_functions = 1
vim.g.go_highlight_types = 1
vim.g.go_metalinter_autosave = 1
vim.g.go_metalinter_enabled = { 'vet', 'golint', 'errcheck' }
