require("victor.remaps")
require("victor.packer")
require("victor.set")
require("victor.filetree")
require("victor.colorscheme")

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

vim.cmd([[
  augroup Prettier
    autocmd!
    autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx Prettier
  augroup end
]])
