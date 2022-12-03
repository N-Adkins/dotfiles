require('mason').setup()

require('lspconfig').sumneko_lua.setup{}
require('lspconfig').clangd.setup{}
require('lspconfig').pyright.setup{}
require('lspconfig').tsserver.setup{}

require('rust-tools').setup()

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
	vim.lsp.diagnostic.on_publish_diagnostics, {
		virtual_text = false,
		underline = true,
		signs = true,
	}
)

vim.cmd [[autocmd CursorHold * lua vim.diagnostic.open_float({scope="line"})]]
vim.cmd [[autocmd CursorHoldI * silent! lua vim.lsp.buf.signature_help()]]
