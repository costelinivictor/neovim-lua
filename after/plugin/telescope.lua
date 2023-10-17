local builtin = require('telescope.builtin')
local telescope = require("telescope")
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<C-f>', builtin.live_grep, {})
