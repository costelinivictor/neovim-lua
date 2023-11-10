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

local function handle_list_event(options)
  local items = options.items
  if #items > 1 then
    items = filter(items, filterReactDTS)
  end

  vim.fn.setqflist({}, ' ', { title = options.title, items = items, context = options.context })
  vim.api.nvim_command('cfirst')
end


local function global(client, bufnr)
  local opts = { buffer = bufnr, remap = false }
  vim.keymap.set("n", "<leader>gd", function()
    vim.lsp.buf.definition { on_list = handle_list_event }
  end, opts)
  vim.keymap.set("n", "<leader>p", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("n", "<leader>e", function() vim.diagnostic.open_float() end, opts)

  -- disable tsserver formatting in favor of ESLint and Prettier
  if client.name == "tsserver" then
    client.server_capabilities.documentFormattingProvider = false
  end
end

return { global = global }
