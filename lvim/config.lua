-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
--lvim.format_on_save = true
lvim.lint_on_save = true
--lvim.colorscheme = "tokyonight"

lvim.format_on_save = false


-- Additional Plugins
-- =========================================
require("user.plugins").config()

-- Additional keybindings
-- =========================================
require("user.keybindings").config()
-- Customization
-- =========================================
lvim.builtin.orgmode = { active = false } -- change to true if you want orgmode.nvim
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0
lvim.builtin.treesitter.ensure_installed = {}
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true


