vim.g.mapleader = " "
vim.keymap.set("i", "<S-tab>", "<C-d>")
vim.keymap.set("i", "<tab>", "<C-t>")
vim.keymap.set("n", "<leader>nh", vim.cmd.noh)
vim.keymap.set("n", "<leader>ft", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>tf", vim.cmd.NvimTreeFindFile)
vim.keymap.set("n", "<leader>q", vim.cmd.BufferClose)
vim.keymap.set("n", "<leader>j", "<C-W>j")
vim.keymap.set("n", "<leader>k", "<C-W>k")
vim.keymap.set("n", "<leader>l", "<C-W>l")
vim.keymap.set("n", "<leader>h", "<C-W>h")
vim.keymap.set("i", "kj", "<Esc>")
vim.keymap.set("n", "<leader><tab>", vim.cmd.BufferNext)
vim.keymap.set("n", "<leader>rb", vim.cmd.BufferRestore)
vim.keymap.set("n", "<leader>te", function()
  vim.cmd("ToggleTerm direction=float")
end)
vim.keymap.set("n", "<leader>lg", function()
  vim.cmd("TermExec cmd='lazygit' direction=float")
end)
