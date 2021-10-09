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
  use 'hrsh7th/nvim-cmp'
  use 'kosayoda/nvim-lightbulb'
  use 'hrsh7th/cmp-buffer'
  use {
  "ray-x/lsp_signature.nvim",
  }

  -- snippet
  use 'rafamadriz/friendly-snippets'
  use 'hrsh7th/vim-vsnip'
  use {'L3MON4D3/LuaSnip'}
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp

  -- Highlight language
  -- treesitter
  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = ':TSUpdate'
  }
  use {
	  'romgrk/nvim-treesitter-context',
  }
  -- color scheme
  use 'glepnir/zephyr-nvim'
  --vscode-theme
  use {'Mofiqul/vscode.nvim'}
  --onedark.vim
  use {'joshdick/onedark.vim'}
  -- edge colorscheme
  use {'sainnhe/edge'}
  -- dashboard
  use {'glepnir/dashboard-nvim'}

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
  use {'junegunn/fzf'}

  --flaoterm
  use 'voldikss/vim-floaterm'

  -- Multi cursor
  use 'mg979/vim-visual-multi'

  -- Startup time
  use {
	"dstein64/vim-startuptime",
	opt =true,
	cmd = "Startuptime",
  }
  --galxyline
  use {"glepnir/galaxyline.nvim", branch = "main",
}



  --asyncrun and asynctask
  use {'skywind3000/asyncrun.vim'}
  use {'skywind3000/asynctasks.vim'}

  --nvim-autopairs
  use {'windwp/nvim-autopairs'}

  --nvim-ts-rainbow
  use {'p00f/nvim-ts-rainbow'}

  --blankline.nvim
  use {'lukas-reineke/indent-blankline.nvim'}

  --vim-sorround
  use {'tpope/vim-surround'}

  --tmux-navigator
  use {'christoomey/vim-tmux-navigator'}

  -- smartim
  use {'ybian/smartim'}


  --formatter.nvim
  use {'mhartington/formatter.nvim'}

  -- which-key.nvim
  use {
	'folke/which-key.nvim',
	opt = true,
	keys="<leader>",
	config= function() require("nv-whichKey")
	end
}

  --comment quickly
  use 'terrortylor/nvim-comment'

  --trouble.nvim
  use {
  "folke/trouble.nvim",
  requires = "kyazdani42/nvim-web-devicons",
  config = function()
    require("trouble").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}

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
  config = function()
    -- you can configure Hop the way you like here; see :h hop-config
    require'hop'.setup { keys = 'etovxqpdygfblzhckisuran'  }
  end
}
	--Vista.vim
	   use {
	 'liuchengxu/vista.vim',
	  cmd = "Vista",
	  ft = {'markdown','go','php','python','c','cpp','lua','java','vim'},
	  config = function()
	  vim.g.vista_default_executive = "nvim_lsp"
	 end
	 }

  --neoscroll.nvim
  use {'karb94/neoscroll.nvim'}

  -- Debug Adapter Protocol
  use {'mfussenegger/nvim-dap', opt=true}
  use {"Pocco81/DAPInstall.nvim", opt=true}
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"}, opt=true ,config = [[require(nv-Dap)]]}

  --orgmode.nvim
  use {'kristijanhusak/orgmode.nvim',
  config = function()
        require('orgmode').setup({
		  org_agenda_files = {'~/Dropbox/org/*', '~/my-orgs/**/*'},
		  org_default_notes_file = '~/Dropbox/org/refile.org',
		})
end
}
-- 颜色荧光笔
  use {
    "norcalli/nvim-colorizer.lua",
    ft = {
      "html",
      "css",
      "sass",
      "scss",
      "vim",
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

--markdown
	  use {
	'iamcco/markdown-preview.nvim',
	ft = "markdown",
	  }

--git
  use {
	'lewis6991/gitsigns.nvim',
	requires = {
	  'nvim-lua/plenary.nvim'
	},
	-- tag = 'release' -- To use the latest release
  }
--ranger
  use {
	'kevinhwang91/rnvimr'
  }
end)

