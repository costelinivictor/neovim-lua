local neodev = require("neodev")
local lsp = require('lsp-zero')

local attach_handlers = require('victor.lsp.attach_handlers')
local language_servers = require('victor.lsp.language_servers')

neodev.setup() -- types for global vim object

lsp.preset("recommended")
lsp.ensure_installed(language_servers.list)

language_servers.load_configs()

lsp.on_attach(attach_handlers.global)

lsp.setup()
