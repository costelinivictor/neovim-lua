local neodev = require("neodev")
local lsp = require('lsp-zero').preset({})
local lsp_config = require('lspconfig')
local cmp = require('cmp')
local lsp_lines = require('lsp_lines')

neodev.setup()

lsp.preset("recommended")
lsp.ensure_installed({
  'tsserver',
  'lua_ls',
  "html",
  "intelephense", -- php
  "pylsp",        -- python
  "tailwindcss",
  "dockerls",
  "emmet_language_server"
})

lsp_config.tsserver.setup({
  on_attach = function(_, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      command = "EslintFixAll",
    })
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      command = "Prettier",
    })
  end
})

-- Fix Undefined global 'vim'
lsp.configure('lua_ls', {
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
})

local function filter(arr, fn)
  if type(arr) ~= "table" then
    return arr
  end

  local filtered = {}
  for k, v in pairs(arr) do
    if fn(v, k, arr) then
      table.insert(filtered, v)
    end
  end

  return filtered
end

local function filterReactDTS(value)
  return string.match(value.filename, 'react/index.d.ts') == nil
end

local function on_list(options)
  local items = options.items
  if #items > 1 then
    items = filter(items, filterReactDTS)
  end

  vim.fn.setqflist({}, ' ', { title = options.title, items = items, context = options.context })
  vim.api.nvim_command('cfirst')
end

lsp.on_attach(function(_, bufnr)
  local opts = { buffer = bufnr, remap = false }
  vim.keymap.set("n", "<leader>gd", function() vim.lsp.buf.definition { on_list = on_list } end, opts)
  vim.keymap.set("n", "<leader>p", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("n", "<leader>e", function() vim.diagnostic.open_float() end, opts)
end)

lsp.setup()
cmp.setup({
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({ select = false }),
    ["<C-Space>"] = cmp.mapping.complete(),
  }
})

lsp_lines.setup()
vim.diagnostic.config({
  virtual_text = false, -- redundant with lsp_lines
})
