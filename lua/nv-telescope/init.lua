--
-- keymapping setting
--
vim.api.nvim_set_keymap('n','<leader>ff',':Telescope find_files<CR>',{ noremap=true,silent=true })
vim.api.nvim_set_keymap('n','<leader>fb',':Telescope buffers<CR>',{ noremap=true,silent=true })
