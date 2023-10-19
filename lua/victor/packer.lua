-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      {
        -- Optional
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional
      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },                  -- Required
      { 'hrsh7th/cmp-nvim-lsp' },              -- Required
      { 'L3MON4D3/LuaSnip' },                  -- Required
    }
  }
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use "tpope/vim-fugitive"
  use "tpope/vim-surround"
  use "nvim-tree/nvim-tree.lua"
  use "nvim-tree/nvim-web-devicons"
  use { 'nvim-lualine/lualine.nvim', config = function() require('lualine').setup() end }
  use { 'm4xshen/autoclose.nvim', config = function() require('autoclose').setup() end }
  use { "windwp/nvim-ts-autotag", config = function() require('nvim-ts-autotag').setup() end }
  use 'terrortylor/nvim-comment'
  use 'mg979/vim-visual-multi'
  use({ 'projekt0n/github-nvim-theme' })
  use 'prettier/vim-prettier'
  use { 'romgrk/barbar.nvim', requires = 'nvim-web-devicons' }
  use "f-person/git-blame.nvim"
  use { "akinsho/toggleterm.nvim", tag = '*', config = function() require("toggleterm").setup() end }
  use { "zbirenbaum/copilot.lua" }
  use { "ellisonleao/gruvbox.nvim" }
  use "lunarvim/Onedarker.nvim"
  use('neovim/nvim-lspconfig')
  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')
  use { 'lewis6991/gitsigns.nvim', config = function() require('gitsigns').setup() end }
  use { "folke/noice.nvim", requires = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" } }
  use { "catppuccin/nvim", as = "catppuccin" }
  use { "folke/trouble.nvim" }
  use "yamatsum/nvim-cursorline"
  use { "folke/neodev.nvim" }
  use {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function() require("todo-comments").setup() end
  }
  use 'dstein64/nvim-scrollview'
  use 'ntpeters/vim-better-whitespace'
  use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require 'alpha'.setup(require 'alpha.themes.startify'.config)
    end
  }
  use({ "L3MON4D3/LuaSnip", run = "make install_jsregexp" })
  use { "lukas-reineke/indent-blankline.nvim", }
  use { "folke/which-key.nvim" }
end)
