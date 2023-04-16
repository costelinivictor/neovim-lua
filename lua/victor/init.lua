require("victor.remaps")
require("victor.packer")
require("victor.set")
require("victor.filetree")
require("victor.colorscheme")

require('lualine').setup {
	options = { theme = 'tokyonight' }
}
require("autoclose").setup()
require('nvim-ts-autotag').setup()
require('nvim_comment').setup {
	operator_mapping = "<C-/>",
}

