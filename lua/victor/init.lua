require("victor.remaps")
require("victor.packer")
require("victor.set")
require("victor.filetree")
require("victor.colorscheme")
require("victor.null-ls")
require("victor.prettier")

require('lualine').setup {
	options = {
		-- theme = 'tokyonight'
		theme = 'gruvbox'
	}
}
require("autoclose").setup()
require('nvim-ts-autotag').setup()
require('nvim_comment').setup {
	operator_mapping = "<C-/>",
}

vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]

