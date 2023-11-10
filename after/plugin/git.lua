require('gitblame').setup {
  enabled = true,
  delay = 500,
  date_format = '%d/%m/%Y %H:%M',
}

vim.g.gitblame_set_extmark_options = {
  hl_mode = "combine",
}
