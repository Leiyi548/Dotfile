vim.o.tabstop = 4							-- Insert 4 space for a tab
--vim.o.nowrap = true							-- Display long lines as just one line
--vim.o.t_Co = 256							-- Support 256 colorss
vim.o.softtabstop = 4						--
vim.o.pumheight = 10						-- Makes popup menu smaller
vim.o.shiftwidth = 2						-- Change the number of space characters insertedc for indentation
vim.o.smarttab = true						-- Makes tabbing smarter will realize you have 2 vs 4
vim.o.number = true							-- line number
vim.o.relativenumber = true					-- open relativenumber
vim.o.hidden =true							-- Require to keep multiple buffers open multiple buffers
vim.o.splitbelow = true						-- Horizontal splits will automatically be below
vim.o.splitright = true						-- Vertical splits will automatically be to the right
vim.o.autoread = true						-- Autoread file
vim.o.ruler = true							-- Show the cursor position all the time
vim.o.cursorline = true						-- Enable highlighting of the current line
vim.o.cursorcolumn = true
vim.o.background = 'dark'					-- Tell vim what the background color looks like
vim.o.autoindent = true						-- autoindetn
vim.o.smartindent = true					-- Good auto indent
vim.o.scrolloff = 5							-- Scrolloff 5
vim.o.ignorecase = true						-- Ignore case
vim.o.smartcase = true						-- boot history
vim.o.history = 100							-- Boot history
vim.o.swapfile = false						-- No swapfile
vim.o.encoding = 'utf-8'					-- The encoding written to file
vim.o.updatetime = 300						-- Faster completion
vim.o.timeoutlen = 500						-- By default timeoutlen is 1000 ms
vim.o.backup = false						-- No backup File
vim.o.mouse = 'a'							-- Enable your mouse
vim.o.conceallevel = 0						-- So that I can see `` in markdown file
vim.o.incsearch = true						-- Search chars will show clear
vim.o.termguicolors = true					-- Open rainbow colors

vim.api.nvim_command('hi HopNextKey guifg=#ce212e')
vim.api.nvim_command('hi HopNextKey1 guifg=#ce212e')
vim.api.nvim_command('hi HopNextKey2 guifg=#ce212e')

-- choose file ranger autoclose
vim.g.rnvimr_enable_picker = 1


--markdownpreview.nvim

--vim.g.mkdp_browser = 'chrome'
