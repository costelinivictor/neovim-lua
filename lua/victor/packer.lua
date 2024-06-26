vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"
  use "RRethy/vim-illuminate"
  use "gen740/SmoothCursor.nvim"
  use "onsails/lspkind.nvim"
  use "chrisgrieser/cmp-nerdfont"
  use "tpope/vim-fugitive"
  use "tpope/vim-surround"
  use "nvim-lualine/lualine.nvim"
  use "m4xshen/autoclose.nvim"
  use "terrortylor/nvim-comment"
  use "mg979/vim-visual-multi"
  use "prettier/vim-prettier"
  use "romgrk/barbar.nvim"
  use "nvim-tree/nvim-web-devicons"
  use "f-person/git-blame.nvim"
  use "zbirenbaum/copilot.lua"
  use "neovim/nvim-lspconfig"
  use "MunifTanjim/prettier.nvim"
  use "lukas-reineke/indent-blankline.nvim"
  use "meuter/lualine-so-fancy.nvim"
  use "folke/trouble.nvim"
  use "folke/neodev.nvim"
  use "yamatsum/nvim-cursorline"
  use "preservim/nerdcommenter"
  use "dstein64/nvim-scrollview"
  use { "catppuccin/nvim", as = "catppuccin" }
  use {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    requires = {
      { "neovim/nvim-lspconfig" },
      { "williamboman/mason.nvim",          run = vim.cmd.MasonUpdate },
      { "williamboman/mason-lspconfig.nvim" },
      { "hrsh7th/nvim-cmp" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "L3MON4D3/LuaSnip" },
    }
  }
  use { "nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" } }
  use { "nvim-tree/nvim-tree.lua" }
  use { "windwp/nvim-ts-autotag", config = function() require("nvim-ts-autotag").setup() end }
  use { "lewis6991/gitsigns.nvim", config = function() require("gitsigns").setup() end }
  use { "folke/noice.nvim", requires = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" } }
  use {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function() require("todo-comments").setup() end
  }
  use {
    "pmizio/typescript-tools.nvim",
    requires = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  }
  use { "ibhagwan/fzf-lua", requires = { "nvim-tree/nvim-web-devicons" } }
end)
