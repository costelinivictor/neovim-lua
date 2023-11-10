local cmp = require('cmp')

cmp.setup({
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({ select = false }),
    ["<C-Space>"] = cmp.mapping.complete(),
  },
  window = {
    completion = cmp.config.window.bordered({
      winhighlight = "Normal:None,FloatBorder:None,Search:None",
      col_offset = -3,
      side_padding = 0,
    }),
    documentation = cmp.config.window.bordered({
      winhighlight = "Normal:None,FloatBorder:FloatBorder,CursorLine:Visual,Search:None",
    }),
  },
  formatting = {
    fields = { "kind", "abbr", "menu" },
    format = function(entry, vim_item)
      local kind = require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
      local strings = vim.split(kind.kind, "%s", { trimempty = true })
      kind.kind = " " .. (strings[1] or "") .. " "

      return kind
    end,
  },
})
