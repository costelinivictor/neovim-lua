-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
--[[
	use({
		"ellisonleao/gruvbox.nvim",
		as = "gruvbox",
	})
	]]
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{                                      -- Optional
				'williamboman/mason.nvim',
				run = function()
					pcall(vim.cmd, 'MasonUpdate')
				end,
			},
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},     -- Required
			{'hrsh7th/cmp-nvim-lsp'}, -- Required
			{'L3MON4D3/LuaSnip'},     -- Required
		}
	}
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use "tpope/vim-fugitive"
	use "tpope/vim-surround"
	use "lukas-reineke/indent-blankline.nvim"
	use "nvim-tree/nvim-tree.lua"
	use "nvim-tree/nvim-web-devicons"
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
	use 'm4xshen/autoclose.nvim'
	use "windwp/nvim-ts-autotag"
	use 'folke/tokyonight.nvim'
	use 'terrortylor/nvim-comment'
	use 'mg979/vim-visual-multi'
	use 'prettier/vim-prettier'
	use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}
	use "f-person/git-blame.nvim"
	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
		require("toggleterm").setup()
	end}
	use {
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				suggestion = {
						enabled = true,
						auto_trigger = true,
						debounce = 75,
						keymap = {
							accept = "<tab>",
							accept_word = false,
							accept_line = false,
							next = "<M-]>",
							prev = "<M-[>",
							dismiss = "<C-]>",
						},
					},
			})
		end,
	}
	use { "ellisonleao/gruvbox.nvim" }
end)
