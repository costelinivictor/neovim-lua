-- require("gruvbox").setup({
--   contrast = "hard"
-- })
-- vim.cmd("colorscheme gruvbox")
-- vim.cmd("colorscheme onedarker")

require("catppuccin").setup {
  color_overrides = {
    mocha = {
      base = "#0D1116",
      mantle = "#0D1116",
      crust = "#0D1116",
    },
  },
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    treesitter = true,
    notify = false,
    mini = {
      enabled = true,
      indentscope_color = "",
    },
  }
}

vim.cmd.colorscheme "catppuccin"

-- Enable true color support
vim.o.termguicolors = true

require('lualine').setup {
  options = {
    -- theme = 'tokyonight'
    -- theme = 'gruvbox_dark'
    -- theme = 'onedark_dark'
    -- theme = 'onedarker'
    theme = 'catppuccin'
  }
}
