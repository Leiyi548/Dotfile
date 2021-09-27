vim.g.tmux_navigator_no_mappings=1
vim.api.nvim_set_keymap('n','<C-l>',':TmuxNavigateLeft<CR>',{ noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<C-j>',':TmuxNavigateDown<CR>',{ noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<C-k>',':TmuxNavigateUp<CR>',{ noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<C-r>',':TmuxNavigateRight<CR>',{ noremap=true,silent=true})
