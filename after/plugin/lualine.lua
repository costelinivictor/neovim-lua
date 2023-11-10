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
      { "fancy_mode", width = 6 }
    },
    lualine_b = {
      { "fancy_branch" },
    },
    lualine_c = {
      {
        function()
          return vim.fn.expand("%:.")
        end
      }
    },
    lualine_x = {
      { "fancy_macro" },
      { "fancy_diagnostics" },
      { "fancy_searchcount" },
    },
    lualine_y = {
      { "fancy_diff" },
    },
  }
})
