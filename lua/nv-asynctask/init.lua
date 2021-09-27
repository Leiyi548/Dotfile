--asynctask asyncrun
vim.g.asynctask_term_pos = 'bottom'
vim.g.asynctask_term_cols = 80
vim.g.asyncrun_open = 6
vim.g.asynctasks_system = 'macos'
vim.api.nvim_set_keymap('n','<leader>lr',':AsyncTask file-run<CR>',{noremap=true,silent=true})


