local tree = require("nvim-tree")
local api = require("nvim-tree.api")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

tree.setup({
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
    indent_markers = {
      enable = true,
      icons = {
        corner = "└ ",
        edge = "│ ",
        item = "│ ",
        none = "  ",
      },
    },
  },
  filters = {
    dotfiles = false,
    custom = { "^.git$" }
  },
  view = {
    width = 40,
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  diagnostics = {
    enable = true,
    show_on_dirs = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  }
})

api.tree.open()
