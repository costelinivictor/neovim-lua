local builtin = require('telescope.builtin')
local telescope = require('telescope')

telescope.setup({
  pickers = {
    find_files = {
      theme = "dropdown"
    }
  },
})

vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<C-a>', builtin.find_files, {})
vim.keymap.set('n', '<C-f>', builtin.live_grep, {})
