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
    s = { "<cmd>PackerSync<CR>", "Sync" },
    u = { "<cmd>PackerUpdate<CR>", "Update" },
  },
})

wk.register({
  ["<leader>w"] = {
    name = "Windows+",
  },
})
