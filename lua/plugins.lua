local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path}) vim.cmd 'packadd packer.nvim'
end


return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- nvim-tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
}

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
  use 'hrsh7th/cmp-nvim-lsp'

  use {
  'hrsh7th/nvim-cmp',
  requires = {
	"onsails/lspkind-nvim", --美化自动完成提示信息
	"hrsh7th/cmp-buffer", --从buffer中智能提示
	"hrsh7th/cmp-nvim-lua", --nvim-cmp source for neovim Lua API.
	"octaltree/cmp-look", --用于完成英语单词
	"hrsh7th/cmp-path", --自动提示硬盘上的文件
	"hrsh7th/cmp-calc", --输入数学算式（如1+1=）自动计算
	"f3fora/cmp-spell", --nvim-cmp 的拼写源基于 vim 的拼写建议
  }
}
  use 'kosayoda/nvim-lightbulb'
  use {
  "ray-x/lsp_signature.nvim",
  }

  -- snippet
  use 'rafamadriz/friendly-snippets'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'

  use {
  'L3MON4D3/LuaSnip',
  loaded = false,
  requires = {
  "saadparwaiz1/cmp_luasnip", -- Snippets source for nvim-cmp
  "rafamadriz/friendly-snippets" --代码段合集
  }
}
  use {
	'saadparwaiz1/cmp_luasnip',
	loaded = false,
} -- Snippets source for nvim-cmp

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
  use {
	  'romgrk/nvim-treesitter-context',
	  config = function()
		require("nv-treesitter.context")
	  end,
	  after = "nvim-treesitter",
  }
  -- color scheme
  use {'glepnir/zephyr-nvim',
  config = [[vim.cmd('colorscheme zephyr')]]
}
  --vscode-theme
  use {
	'Mofiqul/vscode.nvim',
	path = "/Users/macos/.local/share/nvim/site/pack/packer/opt/vscode.nvim"
}
  --onedark.vim
  use {'joshdick/onedark.vim',
}
  -- edge colorscheme
  use {'sainnhe/edge',
}
  -- dashboard
  use {
'glepnir/dashboard-nvim',
   cmd = {
        "Dashboard",
        "DashboardNewFile",
        "DashboardJumpMarks",
        "SessionLoad",
        "SessionSave"
    },
setup = function()
  require("nv-dashboard")
end
}

  use 'itchyny/vim-cursorword'

  -- accelerated_jk
  use 'rhysd/accelerated-jk'

  --bufferline
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

  --Search File
  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}

  --flaoterm
  use 'voldikss/vim-floaterm'

  -- Multi cursor
  use 'mg979/vim-visual-multi'

  --galxyline
  use {"glepnir/galaxyline.nvim", branch = "main",
}



  --asyncrun and asynctask and sniprun
  use {'skywind3000/asyncrun.vim'}
  use {'skywind3000/asynctasks.vim'}
  --nvim-autopairs
  use {'windwp/nvim-autopairs'}

  --nvim-ts-rainbow
  use {
	'p00f/nvim-ts-rainbow',
	after = "nvim-treesitter",
}

  --blankline.nvim
 use {
   "lukas-reineke/indent-blankline.nvim",
   event = "BufRead",
   config = function ()
	 require("nv-indentBlankline")
   end,
 }
--   use {
-- 	'lukas-reineke/indent-blankline.nvim',
-- 	config = function() require("nv-indentBlankline")
-- 	end
-- }

  --vim-sorround
  use {'tpope/vim-surround'}

  --tmux-navigator
  use {'christoomey/vim-tmux-navigator'}

  -- smartim
  use {'ybian/smartim'}


  --formatter.nvim
  use {'mhartington/formatter.nvim'}


  --comment quickly
  use 'terrortylor/nvim-comment'


  --Interesting todo comment
  -- Lua
  use {
	"folke/todo-comments.nvim",
	requires = "nvim-lua/plenary.nvim",
	config = function()
	  require("todo-comments").setup {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	  }
	end
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

--vim-easy-align
use {
  'junegunn/vim-easy-align',
}

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

--markdown
use {
  'iamcco/markdown-preview.nvim',
  run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
  ft = "markdown",
	}
use {
  "dhruvasagar/vim-table-mode",
  ft = "markdown"
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
  cmd = "ToubleToggle",
  path = "/Users/macos/.local/share/nvim/site/pack/packer/opt/trouble.nvim",
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
	cmd = "Sniprun",
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

