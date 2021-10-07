--asynctask asyncrun
vim.g.asynctasks_term_pos = 'bottom'
vim.g.asynctasks_term_cols = 60
vim.g.asynctasks_term_rows= 12
vim.g.asyncrun_open = 6
vim.g.asynctasks_system = 'macos'

vim.api.nvim_set_keymap('n','<leader>rt',':AsyncTask file-run<CR>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<leader>rf',':AsyncTask file-run-floaterm<CR>',{noremap=true,silent=true})



