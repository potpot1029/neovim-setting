require("nvim-lsp-installer").setup {
    automatic_installation = true
}

local lspconfig = require('lspconfig')

lspconfig.sumneko_lua.setup {}
lspconfig.pyright.setup {}
lspconfig.clangd.setup {}

