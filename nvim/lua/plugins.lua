return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- general
  use 'ggandor/lightspeed.nvim'
  use 'jiangmiao/auto-pairs'
  use 'kyazdani42/nvim-web-devicons'
  use 'kylechui/nvim-surround'
  use 'mhartington/formatter.nvim'
  use 'navarasu/onedark.nvim'
  use 'norcalli/nvim-colorizer.lua'
  use 'ntpeters/vim-better-whitespace'
  use 'nvim-lualine/lualine.nvim'
  use 'ray-x/lsp_signature.nvim'
  use 'tpope/vim-commentary'
  use 'tpope/vim-endwise'
  use 'tpope/vim-repeat'
  use 'yamatsum/nvim-cursorline'

  -- lsp
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'

  -- treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use 'nvim-telescope/telescope-file-browser.nvim'
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- fish
  use 'dag/vim-fish'

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
  use { 'vim-ruby/vim-ruby', ft = 'ruby' }
end)
