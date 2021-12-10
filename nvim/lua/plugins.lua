return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- general
  use 'joshdick/onedark.vim'
  use 'ntpeters/vim-better-whitespace'
  use 'nvim-lualine/lualine.nvim'
  use 'tpope/vim-commentary'
  use 'tpope/vim-endwise'
  use 'tpope/vim-sensible'
  use 'tpope/vim-surround'

  -- treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- git
  use {
    'lewis6991/gitsigns.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use 'tpope/vim-fugitive'

  -- go
  use { 'fatih/vim-go', run = ':GoUpdateBinaries' }

  -- Ruby
  use { 'tpope/vim-bundler', ft = 'ruby' }
  use { 'tpope/vim-rails', ft = 'ruby' }
  use { 'tpope/vim-rbenv', ft = 'ruby' }
  use { 'vim-ruby/vim-ruby', ft = 'ruby' }
end)
