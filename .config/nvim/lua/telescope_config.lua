--[[require('telescope').setup()({
    defaults = {
        file_ignore_patterns = {'^./.git/', '^node_modules/'}
    }
})]]

vim.cmd[[

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

]]
