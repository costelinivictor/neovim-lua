vim.o.timeout = true
vim.o.timeoutlen = 300

require("which-key").setup {
  window = {
    border = "single"
  },
  key_labels = {
    ["<CR>"] = '↵',
  },
}