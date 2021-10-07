require('which-key').setup{
}
local wk = require("which-key")
wk.register({
  ["<leader>b"] = {
    name = "+Buffer",
    d = { "<cmd>bdelete!<CR>", "Forcely delete buffer" },
    f = { "<cmd>bfirst<CR>", "Go to first buffer" },
    l = { "<cmd>blast<CR>", "Go to last buffer" },
    n = { "<cmd>bnext<CR>", "Next buffer" },
    p = { "<cmd>bprevious", "Previous buffer" },
  },
})

wk.register({
  ["<leader>e"] = {
    name = "Explorer",
  },
})

wk.register({
  ["<leader>f"] = {
    name = "+File",
	c = { "<cmd>Telescope colorscheme<CR>", "Change colorscheme" },
	k = { "<cmd>Telescope keymaps<CR>", "Preview keymaps" },
	f = { "<cmd>Telescope find_files<CR>", "Find File" },
    r = { "<cmd>Telescope oldfiles<CR>", "Open Recent File" },
    n = { "<cmd>enew<cr>", "New File" },
	v = {name = "+Neovim",
		d = {"<cmd>edit $MYVIMRC<CR>", "Open init.lua"},
		s = {"<cmd>so%<CR>","Source File"}
		}
  },
})


wk.register({
  ["<leader>l"] = {
    name = "+Lsp",
	f = { "<cmd>Format<CR>","Format" }
  },
})

wk.register({
  ["<leader>r"] = {
    name = "+Run",
    t = { "<cmd>AsyncTask file-run<CR>", "Run on default terminal" },
	f = { "<cmd>AsyncTask file-run-floaterm<CR>","Run on floaterm" }
  },
})

wk.register({
  ["<leader>s"] = {
    name = "+Search",
	c = {"<cmd>hlsearch<CR>","clear-search-result"},
    p = { "<cmd>HopPattern<CR>", "hop around by matching against a pattern (as with /)." },
	s = { "<cmd>HopChar2<CR>","type a bigram (two keys) and hop to any occurrence of that bigram in the document." },
	S = { "<cmd>HopChar1<CR>","type a single key and hop to any occurrence of that key in the document." },
    w = { "<cmd>HopWord<CR>", "hop around by highlighting words" },
	l = { "<cmd>HopLine<CR>","jump to any visible line in your buffer." },
  },
})

wk.register({
  ["<leader>t"] = {
    name = "+Terminal",
    r = { "<cmd>FloatermNew ranger<CR>", "ranger" },
	f = { "<cmd>FloatermNew fzf<CR>","fzf" }
  },
})

wk.register({
  ["<leader>p"] = {
    name = "+Packer",
	c = { "<cmd>PackerCompile<CR>","Compile" },
	C = { "<cmd>PackerClean<CR>","Clean" },
    i = { "<cmd>PackerInstall<CR>", "Install" },
    s= { "<cmd>PackerStatus<CR>", "Status" },
    S= { "<cmd>PackerSync<CR>", "Sync" },
    u = { "<cmd>PackerUpdate<CR>", "Update" },
  },
})

wk.register({
  ["<leader>w"] = {
    name = "Windows+",
    h = {name = "Move to left window"},
    j = {name = "Move to window below"},
    k = {name = "Move to upper window"},
    l = {name = "Move to right window"},
	d = {name = "Delete this window"},
	v = {name = "Vertical split screen"},
	s = {name = "Horizontal split screen"},
  },
})

wk.register({
  ["<leader>x"] = {
    name = "Trouble+",
	x = { "<cmd>ToubleToggle<CR>","TroubleToggle" },
	w = { "<cmd>ToubleToggle lsp_workspace_diagnostics<CR>","TroubleToggle_lsp_workspace_diagnostics" },
	d = { "<cmd>ToubleToggle lsp_document_diagnostics<CR>","TroubleToggle_lsp_diagnostics" },
	q = { "<cmd>ToubleToggle quickfix<CR>","TroubleToggle_quickfix" },
  },
})
