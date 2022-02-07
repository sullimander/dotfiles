local set = vim.opt -- map vim.opt to set to make converting viml easier

vim.g.mapleader = ','

vim.cmd('filetype plugin indent on') -- enable filetype plugin and indent detection
vim.cmd('syntax on') -- enable syntax highlighting

set.encoding = 'utf-8'
set.backspace = { 'indent', 'eol', 'start' } -- backspace works on every char in insert mode
set.wrap = false -- don't wrap text
set.completeopt = { 'menuone', 'noselect' }
set.startofline = true
set.cursorline = true -- highlight current line
set.showmatch = true -- highlight matching [{()}]
set.number = true -- show line numbers
set.numberwidth = 4
set.signcolumn = 'yes'
set.colorcolumn = '100'
set.mouse = 'a'

set.backup = false -- do not backup files
set.swapfile = false -- also do not create swap files

set.showmode = true --·mode is shown in the status bar

set.clipboard = 'unnamed' -- copy/paste to clipboard

-- show hidden characters
set.list = true
set.listchars = { space = '·', trail = '·', tab = '▸ ', eol = '¬' }

-- ignore certain files
set.wildignore = { '*/tmp/*', '*.so', '*.swp', '*.zip', '*.DS_Store', '*/node_modules', '*/.git', '*/vendor' }

-- indentation
set.expandtab = true -- insert spaces when tab key is pressed
set.tabstop = 2 -- 1 tab == 2 spaces
set.shiftwidth = 2 -- 1 indentation == 2 spaces
set.smartindent = true

-- splits
set.splitbelow = true
set.splitright = true

-- folding
set.foldenable = false -- no folding by default
set.foldmethod = 'syntax' -- fold based on language syntax
set.foldnestmax = 10 -- deepest fold is 10 levels
set.foldlevel = 1 -- fold one level at a time
