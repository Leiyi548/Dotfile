
vim.api.nvim_set_keymap('n','<Space>','<NOP>',{noremap=true,silent=true})

vim.g.mapleader = ' '

-- no hl
vim.api.nvim_set_keymap('n','<leader>sc',':set hlsearch!<CR>',{ noremap=true,silent=true})

-- move quickly
vim.api.nvim_set_keymap('n','H','^',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','L','$',{noremap=true,silent=true})
vim.api.nvim_set_keymap('v','H','^',{noremap=true,silent=true})
vim.api.nvim_set_keymap('v','L','$',{noremap=true,silent=true})

--split windows
vim.api.nvim_set_keymap('n','<leader>ws',':split<CR>',{silent=true})
vim.api.nvim_set_keymap('n','<leader>wv',':vsplit<CR>',{silent=true})

--window movement
vim.api.nvim_set_keymap('n','<leader>wj','<C-w>j',{silent=true})
vim.api.nvim_set_keymap('n','<leader>wk','<C-w>k',{silent=true})
vim.api.nvim_set_keymap('n','<leader>wh','<C-w>h',{silent=true})
vim.api.nvim_set_keymap('n','<leader>wl','<C-w>l',{silent=true})

-- use system clipboard
vim.api.nvim_set_keymap('n','<leader>y','"+y',{silent=true})
vim.api.nvim_set_keymap('n','<leader>p','"+p',{silent=true})
vim.api.nvim_set_keymap('v','<leader>y','"+y',{silent=true})
vim.api.nvim_set_keymap('v','<leader>p','"+p',{silent=true})

-- copy or paste quickly
vim.api.nvim_set_keymap('n','Y','y$',{silent=true})
vim.api.nvim_set_keymap('v','Y','y$',{silent=true})

-- nvim-tree.lua
vim.api.nvim_set_keymap('n','<leader>e',':NvimTreeToggle<CR>',{ noremap=true,silent=true })


-- accelerated-jk
vim.api.nvim_set_keymap('n','j','<Plug>(accelerated_jk_gj)',{ silent=true })
vim.api.nvim_set_keymap('n','k','<Plug>(accelerated_jk_gk)',{ silent=true })

--asynctask asyncrun
vim.g.asynctask_term_pos = 'bottom'
vim.g.asynctask_term_cols = 80
vim.g.asyncrun_open = 6
vim.g.asynctasks_system = 'macos'
vim.api.nvim_set_keymap('n','<leader>lr',':AsyncTask file-run<CR>',{noremap=true,silent=true})


