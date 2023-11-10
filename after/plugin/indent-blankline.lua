local ibl = require("ibl")

ibl.setup {
  indent = { char = "·" },
  scope = {
    enabled = false
  },
  exclude = {
    filetypes = {
      'lspinfo',
      'packer',
      'checkhealth',
      'help',
      'man',
      'dashboard',
      'git',
      'markdown',
      'text',
      'terminal',
      'NvimTree',
    },

    buftypes = {
      'terminal',
      'nofile',
      'quickfix',
      'prompt',
    },
  },
}
