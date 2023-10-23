require("lualine").setup({
  theme = "seoul256",
  component_separators = { left = "│", right = "│" },
  section_separators = { left = "", right = "" },
  globalstatus = true,
  refresh = {
    statusline = 100,
  },
  sections = {
    lualine_a = {
      { "fancy_mode", width = 8 }
    },
    lualine_b = {
      { "fancy_branch" },
      { "fancy_diff" },
    },
    lualine_c = {
      { "fancy_cwd", substitute_home = true }
    },
    lualine_x = {
      { "fancy_macro" },
      { "fancy_diagnostics" },
      { "fancy_searchcount" },
    },
    lualine_y = {
      { "fancy_filetype" }
    },
    lualine_z = {
      { "fancy_lsp_servers" }
    }
  }
})
