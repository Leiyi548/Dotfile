-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
--lvim.format_on_save = true
lvim.lint_on_save = true
--lvim.colorscheme = "tokyonight"

lvim.format_on_save = false

lvim.builtin.orgmode = { active = false } -- change to true if you want orgmode.nvim
lvim.builtin.autosave = { active = false } -- change to true if you want to autosave file
lvim.builtin.fancy_dashboard = {active = true}
lvim.builtin.dashboard.active = not lvim.builtin.fancy_dashboard.active
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0
lvim.builtin.treesitter.ensure_installed = {}
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true


-- Additional Plugins
-- =========================================
require("user.plugins").config()

-- Additional keybindings
-- =========================================
require("user.keybindings").config()
-- Customization
-- =========================================

-- Additional Formatters
-- =========================================
-- exe value can be "clang_format" or "uncrustify"
--C or C++
lvim.lang.c.formatters = { { exe = "clang-format" } }
lvim.lang.cpp.formatters = lvim.lang.c.formatters
--Python
-- exe value can be "black", "yapf", or "isort"
--lvim.lang.python.linters = { { exe = "isort" } }
--lvim.lang.python.formatters = { { exe = "black" } }
