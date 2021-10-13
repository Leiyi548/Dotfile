require('which-key').setup{
}
local wk = require("which-key")
wk.register({
  ["g"] = {
  },
})
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
	v = { "<cmd>Vista<CR>", "Vista" },
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
  ["<leader>g"] = {
    name = "+Git",
    b = { '<cmd>lua require"gitsigns".blame_line(true)<CR>', "Show git blame" },
	j = { "<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>", "Go to next Hunk" },
	k = { "<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>", "Go to previous Hunk" },
	r = { '<cmd>lua require"gitsigns".reset_hunk()<CR>', "Reset Hunk" },
    p = { '<cmd>lua require"gitsigns".preview_hunk()<CR>', "Preview Hunk" },
    R = { '<cmd>lua require"gitsigns".reset_buffer()<CR>', "Reset buffer" },
	u = {'<cmd>lua require"gitsigns".undo_stage_hunk()<CR>',"Redo"},
    U = { '<cmd>lua require"gitsigns".reset_buffer()<CR>', "Reset buffer" },

  },
})

wk.register({
  ["<leader>l"] = {
    name = "+Lsp",
	a = {"<cmd>Lspsaga code_action<CR>"},
	f = { "<cmd>Format<CR>","Format" },
	i = {"<cmd>LspInfo<CR>","LspInfo"},
	j = {"<cmd>Lspsaga diagnostic_jump_next<CR>","Next Diagnostic"},
	k = {"<cmd>Lspsaga diagnostic_jump_prev<CR>","Prev Diagnostic"},

  },
})

wk.register({
  ["<leader>m"] = {
    name = "+Markdown",
	p = {"<cmd>MarkdownPreview<CR>","Preview"},
	t = {"<cmd>TableModeToggle<CR>","TableMode"},
	g = {"<cmd>Glow<CR>","Glow"}

  },
})
wk.register({
  ["<leader>o"] = {
    name = "+Orgmode",
	a = {
	  name = "agendaPrompt",
	},
	c = {
	  name = "capturePrompt",
	},
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
	c = {name="clear-search-result"},
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
    r = { "<cmd>RnvimrToggle<CR>", "ranger" },
	a = { "<cmd>RnvimrResize<CR>", "resize"},
	--f = { "<cmd>FloatermNew fzf<CR>","fzf" },
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
    name = "+Windows",
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
