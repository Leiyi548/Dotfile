local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path}) vim.cmd 'packadd packer.nvim'
end

local uiconf = require('ui.config')
local editorconf = require("editor.config")
local completionconf = require("completion.config")

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- INFO:UI
  -- color scheme
  use {'glepnir/zephyr-nvim',
  --config = [[vim.cmd('colorscheme zephyr')]]
}

  --tokyonight.nvim
  use{
	"folke/tokyonight.nvim",
	config = vim.cmd[[colorscheme tokyonight]];
  }
  --vscode-theme
  use {
	'Mofiqul/vscode.nvim',
}
  --onedark.vim
  use {
	'joshdick/onedark.vim',
	--config = [[vim.cmd('colorscheme onedark')]]

}
  -- edge colorscheme
  use {
	'sainnhe/edge',
	opt = false,
	--config = uiconf.edge,

}
--bufferline
  use {
	'akinsho/bufferline.nvim',
	event = 'BufRead',
	config = uiconf.nvim_bufferline,
  }

-- --lualine.nvim
-- use {
-- }
--galxyline
  use {
	"glepnir/galaxyline.nvim", branch = "main",
	after = "nvim-web-devicons",
	event = "BufRead",
	config = uiconf.galaxyline,
}
  -- nvim-tree
  use {
    'kyazdani42/nvim-tree.lua',
    cmd = {"NvimTreeToggle","NvimTreeOpen"},
	config = uiconf.nvimtree,
}
  --blankline.nvim
 use {
   "lukas-reineke/indent-blankline.nvim",
   event = "BufRead",
   config = uiconf.indent_blankline
 }

-- INFO:editor
  -- accelerated_jk
  use 'rhysd/accelerated-jk'

  use {
	'itchyny/vim-cursorword',
	event = {"BufReadPre","BufNewFile"},
  }

  use {
	"simrat39/symbols-outline.nvim",
	cmd = {'SymbolsOutline', 'SymbolsOulineOpen'},
  }

  use {
	'mbbill/undotree',
	cmd = {"UndotreeToggle"},
  }
  --vim-sorround
  use {
	'tpope/vim-surround',
	keys = {"c","d","y"},
  }

  use {
	  'romgrk/nvim-treesitter-context',
	  config = function()
		require("nv-treesitter.context")
	  end,
	  after = "nvim-treesitter",
  }

--vim-easy-align
use {
  'junegunn/vim-easy-align',
  cmd = "EasyAlign",
}

-- INFO:Markdown
--markdown
use {
  'iamcco/markdown-preview.nvim',
  run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
  ft = "markdown",
  config = function ()
vim.g.mkdp_markdown_css = "~/.config/nvim/colorscheme/markdown.css"
vim.g.mkdp_auto_close =0
vim.cmd([[
source ~/.config/nvim/md-snippets.vim
autocmd BufRead,BufNewFile *.md setlocal spell
]])
  end
}

use {
  "npxbr/glow.nvim",
  ft = {"markdown"},
}

use {
  "dhruvasagar/vim-table-mode",
  ft = "markdown"
}
 -- INFO:cmp
  --config my lsp
  use "neovim/nvim-lspconfig" --This repo handles automatically launching and initializing language servers that are installed on your system.
  use "onsails/lspkind-nvim"  -- This tiny plugin adds vscode-like pictograms to neovim built-in lsp
  use {"kabouzeid/nvim-lspinstall",
	  --opt = true,
	  --cmd = "LspInstall",
	  --config = function() require("lsp.lspCfg")
	  --end
}
  use 'glepnir/lspsaga.nvim'
  use {
	'hrsh7th/nvim-cmp',
	config = completionconf.cmp
  }
  use 'hrsh7th/cmp-nvim-lsp'
  use "hrsh7th/cmp-buffer"
  --use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-nvim-lua"
  use "hrsh7th/cmp-emoji"
  use "quangnguyen30192/cmp-nvim-ultisnips"

  use {
	'windwp/nvim-autopairs',
}
  use 'kosayoda/nvim-lightbulb'
  use {
  "ray-x/lsp_signature.nvim",
  }
  -- snippet
  use "SirVer/ultisnips"
  use "Allen191819/vim-snippets"
  -- Highlight language
  -- treesitter
  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = ':TSUpdate',
	  event = "BufRead",
	  config = function()
		require("nv-treesitter")
	  end
  }
  --nvim-ts-rainbow
  use {
	'p00f/nvim-ts-rainbow',
	after = "nvim-treesitter",
}
  -- dashboard
  use {
'glepnir/dashboard-nvim',
   -- cmd = {
   --      "Dashboard",
   --      "DashboardNewFile",
   --      "DashboardJumpMarks",
   --      "SessionLoad",
   --      "SessionSave"
   --  },
event = "BufWinEnter",
setup = uiconf.dashboard,
}




  --Search File
  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}

  --flaoterm
  use 'voldikss/vim-floaterm'

  -- Multi cursor
  use 'mg979/vim-visual-multi'




  --asyncrun and asynctask and sniprun
  use {'skywind3000/asyncrun.vim'}
  use {'skywind3000/asynctasks.vim'}

--   use {
-- 	'lukas-reineke/indent-blankline.nvim',
-- 	config = function() require("nv-indentBlankline")
-- 	end
-- }


  --tmux-navigator
  use {'christoomey/vim-tmux-navigator'}

  -- smartim
  use {
	'ybian/smartim',
	event = {"InsertEnter"},
  }


  --formatter.nvim
  use {
	'mhartington/formatter.nvim',
	opt = true,
  }


  --comment quickly
  use {
	'terrortylor/nvim-comment',
	keys = {"gc","gcc"},
	config = editorconf.nvim_comment,
  }


  --Interesting todo comment
  -- Lua
  use {
	"folke/todo-comments.nvim",
	requires = "nvim-lua/plenary.nvim",
	event = "BufRead",
	config =editorconf.todocomments,
  }

  --hop.nvim search file
  use {
  'phaazon/hop.nvim',
  as = 'hop',
  cmd = {
         "HopWord",
         "HopLine",
         "HopChar1",
         "HopChar2",
         "HopPattern",
      },
  config = function()
    -- you can configure Hop the way you like here; see :h hop-config
    require'hop'.setup {
	  keys = 'etovxqpdygfblzhckisuran'
	}
  end
}
  --neoscroll.nvim
  --use {'karb94/neoscroll.nvim'}


--[[
--
--INFO:Lazyload
--
--]]--
--

--ranger
  use {
	'kevinhwang91/rnvimr',
	opt = true,
	cmd = "RnvimrToggle",
  }


-- 颜色荧光笔
  use {
    "norcalli/nvim-colorizer.lua",
	event = "BufRead",
    ft = {
      "html",
      "css",
      "sass",
      "scss",
      "vim",
	  "markdown",
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "vue",
      "lua"
    },
    config = function()
	    require "colorizer".setup()
	  end
  }

  --orgmode.nvim
  use {'kristijanhusak/orgmode.nvim',
    ft = {'org'},
    config = function()
    require('orgmode').setup{}
    end
	}

  --trouble.nvim
  use {
  "folke/trouble.nvim",
  requires = "kyazdani42/nvim-web-devicons",
  cmd = {"ToubleToggle","TroubleToggle","TroubleRefresh"},
  config = function()
	require("nv-troubleNvim")
  end
 }
  -- Debug Adapter Protocol
  use {'mfussenegger/nvim-dap', opt=true}
  use {"Pocco81/DAPInstall.nvim", opt=true}
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"}, opt=true ,config = [[require(nv-Dap)]]}

	--Vista.vim
   use {
 'liuchengxu/vista.vim',
  cmd = "Vista",
  ft = {'markdown','go','php','python','c','cpp','lua','java','vim'},
  config = function()
  vim.g.vista_default_executive = "nvim_lsp"
 end
 }

  use {
	'michaelb/sniprun',
	cmd = {"Sniprun","'<,'>SnipRun"},
	run = 'bash ./install.sh'
  }

  -- Startup time
  use {
	"dstein64/vim-startuptime",
	opt =true,
	cmd = "Startuptime",
  }
  -- which-key.nvim
  use {
	'folke/which-key.nvim',
	opt = true,
	keys="<leader>",
	config= function() require("nv-whichKey")
	end
}

--git
	 use {
	 'lewis6991/gitsigns.nvim',
	 event = {'BufRead','BufNewFile'},
	 requires = {
	   'nvim-lua/plenary.nvim'
	},
	config = function() require("nv-gitsigns.init") end
	}
end)

