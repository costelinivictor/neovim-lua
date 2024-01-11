require("catppuccin").setup {
  color_overrides = {
    mocha = {
      base = "#010409",
      mantle = "#010409",
      crust = "#010409",
    },
  },
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    treesitter = true,
    notify = false,
    mini = {
      enabled = true,
      indentscope_color = "",
    },
  },
  custom_highlights = function(C)
    return {
      CmpItemKindSnippet = { fg = C.base, bg = C.mauve },
      CmpItemKindKeyword = { fg = C.base, bg = C.red },
      CmpItemKindText = { fg = C.base, bg = C.teal },
      CmpItemKindMethod = { fg = C.base, bg = C.blue },
      CmpItemKindConstructor = { fg = C.base, bg = C.blue },
      CmpItemKindFunction = { fg = C.base, bg = C.blue },
      CmpItemKindFolder = { fg = C.base, bg = C.blue },
      CmpItemKindModule = { fg = C.base, bg = C.blue },
      CmpItemKindConstant = { fg = C.base, bg = C.peach },
      CmpItemKindField = { fg = C.base, bg = C.green },
      CmpItemKindProperty = { fg = C.base, bg = C.green },
      CmpItemKindEnum = { fg = C.base, bg = C.green },
      CmpItemKindUnit = { fg = C.base, bg = C.green },
      CmpItemKindClass = { fg = C.base, bg = C.yellow },
      CmpItemKindVariable = { fg = C.base, bg = C.flamingo },
      CmpItemKindFile = { fg = C.base, bg = C.blue },
      CmpItemKindInterface = { fg = C.base, bg = C.yellow },
      CmpItemKindColor = { fg = C.base, bg = C.red },
      CmpItemKindReference = { fg = C.base, bg = C.red },
      CmpItemKindEnumMember = { fg = C.base, bg = C.red },
      CmpItemKindStruct = { fg = C.base, bg = C.blue },
      CmpItemKindValue = { fg = C.base, bg = C.peach },
      CmpItemKindEvent = { fg = C.base, bg = C.blue },
      CmpItemKindOperator = { fg = C.base, bg = C.blue },
      CmpItemKindTypeParameter = { fg = C.base, bg = C.blue },
      CmpItemKindCopilot = { fg = C.base, bg = C.teal },
    }
  end,
}

vim.cmd.colorscheme "catppuccin"
