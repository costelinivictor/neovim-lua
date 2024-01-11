local fzflua = require("fzf-lua");

fzflua.setup({})

vim.keymap.set('n', '<C-p>', fzflua.files, {})
