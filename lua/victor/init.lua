require("victor.remaps")
require("victor.packer")
require("victor.set")

-- Call formatter on save
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
