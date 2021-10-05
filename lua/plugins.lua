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
  use "kabouzeid/nvim-lspinstall" 
  use 'hrsh7th/vim-vsnip'
  use 'glepnir/lspsaga.nvim'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'

  -- Highlight language
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
  -- color scheme
  use 'glepnir/zephyr-nvim'
  --vscode-theme
  use {'Mofiqul/vscode.nvim'}
  --onedark.vim
  use {'joshdick/onedark.vim'}

  -- dashboard
  use 'glepnir/dashboard-nvim'

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

  --galxyline
  use {"glepnir/galaxyline.nvim", branch = "main"}

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



  -- which-key.nvim
  use {'folke/which-key.nvim'}

end)

