---
---general setting
---
vim.opt.termguicolors = true
require("bufferline").setup{}






---
---keysetting
---
vim.api.nvim_set_keymap('n','<TAB>',':BufferLineCycleNext<CR>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<S-TAB>',':BufferLineCyclePrev<CR>',{noremap=true,silent=true})
