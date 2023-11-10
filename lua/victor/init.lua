require("victor.remaps")
require("victor.packer")
require("victor.set")
require("victor.lsp")

-- Call formatter on save
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
