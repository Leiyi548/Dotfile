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
  ["<leader>l"] = {
    name = "+Languages",
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
  ["<leader>t"] = {
    name = "+Terminal",
    r = { "<cmd>FloatermNew ranger<CR>", "ranger" },
	f = { "<cmd>FloatermNew fzf<CR>","fzf" }
  },
})

wk.register({
  ["<leader>p"] = {
    name = "+Packer",
	c = { "<cmd>PackerClean<CR>","Clean" },
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
