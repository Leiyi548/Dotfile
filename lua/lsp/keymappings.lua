local nvim_lsp = require('lspconfig')

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  --buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  --buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  --buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  --buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  --buf_set_keymap('n', 'g[', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  --buf_set_keymap('n', 'g]', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  --buf_set_keymap('n', ',q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  --buf_set_keymap('n', ',f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
vim.api.nvim_set_keymap('n',',q','<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>',{ silent=true,noremap=true})
vim.api.nvim_set_keymap('n',',f','<cmd>lua vim.lsp.buf.formatting()<CR>',{ silent=true,noremap=true})
end

-- lspsaga.nvim
-- lsp provider to find the cursor word definition and reference
vim.api.nvim_set_keymap('n','gh',':Lspsaga lsp_finder<CR>',{noremap=true,silent=true})

-- code aciton
vim.api.nvim_set_keymap('n','<leader>ca',':Lspsaga code_action<CR>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('v','<leader>ca',':Lspsaga code_action<CR>',{noremap=true,silent=true})

-- show hover docc
vim.api.nvim_set_keymap('n','K', ':Lspsaga hover_doc<CR>',{noremap=true,silent=true})

-- scroll down hover doc or scroll in definition preview
vim.api.nvim_set_keymap('n','<C-j>','<cmd>lua require(\'lspsaga.action\').smart_scroll_with_saga(1)<CR>',{ silent=true, noremap=true })
vim.api.nvim_set_keymap('n','<C-k>','<cmd>lua require(\'lspsaga.action\').smart_scroll_with_saga(-1)<CR>',{ silent=true, noremap=true })

-- Rename
vim.api.nvim_set_keymap('n','<leader>rn', ':Lspsaga rename<CR>',{noremap=true,silent=true})

-- Preview definition
--vim.api.nvim_set_keymap('n','gd', ':Lspsaga preview_definition<CR>',{noremap=true,silent=true})

vim.api.nvim_set_keymap('n','gp',':Lspsaga preview_definition<CR>',{ silent=true, noremap=true })

--Jump diagnostic adnd show diagnostic
vim.api.nvim_set_keymap('n','g[', ':Lspsaga diagnostic_jump_prev<CR>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','g]', ':Lspsaga diagnostic_jump_next<CR>',{noremap=true,silent=true})


