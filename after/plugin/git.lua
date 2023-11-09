vim.keymap.set("n", "<leader>gs", vim.cmd.Git);
vim.keymap.set("n", "<leader>gp", vim.cmd.GitPush);
vim.keymap.set("n", "<leader>ds", vim.cmd.GitDiffSplit);

require('gitblame').setup {
  --Note how the `gitblame_` prefix is omitted in `setup`
  enabled = true,
  delay = 500,
}
