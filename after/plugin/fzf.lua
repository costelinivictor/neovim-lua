local fzf = require("fzf-lua");

fzf.setup({})

local search_files = function()
  fzf.files({ cmd = "fd --type f --hidden --follow --exclude .git --exclude node_modules" })
end

local grep = function()
  fzf.live_grep({
    cmd =
    "rg --color=always --smart-case --no-ignore --glob '!.git/**' --glob '!node_modules/**'"
  })
end

vim.keymap.set('n', '<C-p>', search_files, {})
vim.keymap.set('n', '<C-f>', grep, {})
