-- available servers: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
local list = {
  'tsserver',
  'eslint',
  'prettier_d',
  'lua_ls',
  "html",
  "intelephense", -- php
  "pylsp",        -- python
  "tailwindcss",
  "dockerls",
  "emmet_language_server",
  "terraformls"
}

local custom_configs = {
  eslint = {
    on_attach = function()
      vim.api.nvim_create_autocmd('BufWritePost', {
        callback = function()
          vim.cmd('EslintFixAll')
        end,
      })
    end
  }
}

local function load_configs()
  for _, server in ipairs(list) do
    local config = custom_configs[server]
    if config then
      require('lspconfig')[server].setup(config)
    end
  end
end

return {
  list = list,
  custom_configs = custom_configs,
  load_configs = load_configs
}
