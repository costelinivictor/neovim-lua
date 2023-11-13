local smooth_cursor = require("smoothcursor")
local cursorline = require("nvim-cursorline")

cursorline.setup({
  cursorline = {
    enable = true,
    timeout = 0,
    number = false,
  },
  cursorword = {
    enable = false,
  }
})

smooth_cursor.setup()
