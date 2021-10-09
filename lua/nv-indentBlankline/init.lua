--[[
--
--
--
--
vim.api.nvim_command('highlight IndentBlanklineIndent1 guifg=#E05C75 gui=nocombine')
vim.api.nvim_command('highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine')
vim.api.nvim_command('highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine')
vim.api.nvim_command('highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine')
vim.api.nvim_command('highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine')
vim.api.nvim_command('highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine')

vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")

require("indent_blankline").setup {
    space_char_blankline = " ",
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
    },
}

--
--
--
--
--
--
--]]--
vim.g.indentLine_char_list = { '|', '¦', '┆', '┊' }
vim.g.indentLine_char = 'c'
vim.g.indentLine_fileTypeExclude = { 'dashboard','floaterm' }

