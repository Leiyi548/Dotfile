
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

--close buffer quickly
vim.api.nvim_set_keymap('n','<leader>bf',':bfirst<CR>',{silent=true})
vim.api.nvim_set_keymap('n','<leader>bl',':blast<CR>',{silent=true})
vim.api.nvim_set_keymap('n','<leader>bd',':bdelete!<CR>',{silent=true})
vim.api.nvim_set_keymap('n','X',':bdelete!<CR>',{silent=true})

-- exit quickly
vim.api.nvim_set_keymap('n','Q',':qa!<CR>',{silent=true})

---
---switch buffer quickly
---
vim.api.nvim_set_keymap('n','<TAB>',':BufferLineCycleNext<CR>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<S-TAB>',':BufferLineCyclePrev<CR>',{noremap=true,silent=true})

-- run 保持终端
vim.api.nvim_set_keymap('t','<Esc>',"<C-\\><C-n>",{silent=true})

-- nvim-tree.lua
vim.api.nvim_set_keymap('n','<leader>e',':NvimTreeToggle<CR>',{ noremap=true,silent=true })


-- Use Alt + H / J / K / L to change size the split screen
vim.api.nvim_set_keymap('n','˙','<C-w>2<',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','∆','<C-w>2-',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','˚','<C-w>2+',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','¬','<C-w>2>',{noremap=true,silent=true})

-- accelerated-jk
vim.api.nvim_set_keymap('n','j','<Plug>(accelerated_jk_gj)',{ silent=true })
vim.api.nvim_set_keymap('n','k','<Plug>(accelerated_jk_gk)',{ silent=true })

-- formatting
vim.api.nvim_set_keymap('n','lf',':Format<CR>',{noremap=true,silent=true })
