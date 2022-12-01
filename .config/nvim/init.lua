vim.g.mapleader = ","

require('plugins')
require('options')
require('cmp_options')
require('mason_config')
require('telescope_config')
require('treesitter')

require('lualine').setup({
    options = { theme = 'gruvbox' }
})

require('nvim-autopairs').setup({
    check_ts = true,
})

local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done())

vim.cmd [[
    let g:better_whitespace_enabled=0
    let g:strip_whitespace_on_save=1
]]
