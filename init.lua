--[[--
File              : init.lua
Date              : 25.09.2021
Last Modified Date: 25.09.2021
--]]--
--[[
--
      ________   _______   ________  ___      ___ ___  _____ _______
     |\   ___  \|\  ___ \ |\   __  \|\  \    /  /|\  \|\   _ \  _   \
     \ \  \\ \  \ \   __/|\ \  \|\  \ \  \  /  / | \  \ \  \\\__\ \  \
      \ \  \\ \  \ \  \_|/_\ \  \\\  \ \  \/  / / \ \  \ \  \\|__| \  \
       \ \  \\ \  \ \  \_|\ \ \  \\\  \ \    / /   \ \  \ \  \    \ \  \
        \ \__\\ \__\ \_______\ \_______\ \__/ /     \ \__\ \__\    \ \__\
         \|__| \|__|\|_______|\|_______|\|__|/       \|__|\|__|     \|__|
-- ]]
--
require('keymappings')
require('plugins')
require('settings')
--Colorscheme
require('colorscheme')

--buffline
require('nv-buffline')

-- telescope
require('nv-telescope')

--floaterm
require('nv-floaterm')

--dashboard
require('nv-dashboard')

--galaxyline
require('nv-galaxyline')

--autopairs
require('nv-nvimautopairs')

--nvimtree
require('nv-nvimtree')

--nvim-ts-rainbow
require('nv-nvimTsRainbow')

--indentblankline
require('nv-indentBlankline')

--tmuxnavigate
require('nv-tmuxNavigator')

--smartim_default
require('nv-smartim')

--async
require('nv-asynctask')

--lsp
require('lsp.keymappings')
require('lsp.lspCfg')
require('lsp.lspUi')
require('lsp.completion')

--which_key
require('nv-whichKey')

--formatter
require('nv-formmater')

--comment
require('nv-nvimComment')

--trouble
require('nv-troubleNvim')
require('nv-troubleNvim.keymappings')

--Hop easymotion plus plus
require('nv-Hop')

--neoscroll
require('nv-neoscroll')
