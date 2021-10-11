-- 启动debug
vim.api.nvim_set_keymap('n','<leader>dd',':lua require"dap".continue()<CR>',{silent=true,noremap=true})

--
vim.api.nvim_set_keymap('n','<leader>dd',':lua require"dap".continue()<CR>',{silent=true,noremap=true})

--打上断点
vim.api.nvim_set_keymap('n','<leader>db',':lua require"dap".toggle_breakpoint()<CR>',{silent=true,noremap=true})

--单步调试
vim.api.nvim_set_keymap('n','<leader>di',':lua require"dap".step_into()<CR>',{silent=true,noremap=true})

--单步跳出
vim.api.nvim_set_keymap('n','<leader>do','lua require"dap".step_over()<CR>',{silent=true,noremap=true})

--单步跳过
vim.api.nvim_set_keymap('n','<leader>ds','lua require"dap".step_out()<CR>',{silent=true,noremap=true})



