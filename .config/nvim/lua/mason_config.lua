require('mason').setup()

require('lspconfig').sumneko_lua.setup{}
require('lspconfig').clangd.setup{}
require('lspconfig').pyright.setup{}
require('lspconfig').tsserver.setup{}

require('rust-tools').setup()
