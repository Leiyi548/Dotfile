local M ={}

M.config = function ()
lvim.plugins={
    {
      "abzcoding/tokyonight.nvim",
      branch = "feature/vim-diagnostics",
      config = function()
        require("user.theme").tokyonight()
        vim.cmd [[
      colorscheme tokyonight
      ]]
      end,
      cond = function()
        local _time = os.date "*t"
        return (_time.hour >= 0 and _time.hour < 5) or (_time.hour >= 11 and _time.hour < 17)
      end,
    },
    {
      "abzcoding/zephyr-nvim",
      config = function()
        vim.cmd [[
       colorscheme zephyr
       ]]
      end,
      cond = function()
        local _time = os.date "*t"
        return (_time.hour >= 5 and _time.hour < 8)
      end,
    },
    {
      "Pocco81/Catppuccino.nvim",
      config = function()
        require("user.theme").catppuccino()
      end,
      cond = function()
        local _time = os.date "*t"
        return (_time.hour >= 8 and _time.hour < 11)
      end,
    },
    {
      "abzcoding/doom-one.nvim",
      branch = "feat/nvim-cmp-floating",
      config = function()
        require("user.theme").doom()
        vim.cmd [[
      colorscheme doom-one
      ]]
      end,
      cond = function()
        local _time = os.date "*t"
        return (_time.hour >= 17 and _time.hour < 21)
      end,
    },
    {
      "rhysd/accelerated-jk"
    },

    {
    "tpope/vim-surround",
    keys = {"c","d","y"},
    },

    --markdown
    {
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
    },
    {
    "npxbr/glow.nvim",
    ft = {"markdown"},
    },
    {
    "dhruvasagar/vim-table-mode",
    ft = "markdown"
    },

    --run
    {
      'skywind3000/asyncrun.vim'
    },
    {
      'skywind3000/asynctasks.vim',
      config = function ()
      vim.g.asynctasks_term_pos = 'bottom'
      vim.g.asynctasks_term_cols = 60
      vim.g.asynctasks_term_rows= 12
      vim.g.asyncrun_open = 6
      vim.g.asynctasks_system = 'macos'
      end
    },
    {
      "voldikss/vim-floaterm"
    },

    --search file
    {
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
    },

    --orgmode.nvim
    {
    'kristijanhusak/orgmode.nvim',
    ft = {'org'},
    config = function()
    require('orgmode').setup{}
    end,
    --disable = not lvim.builtin.orgmode.active,
	  },

    --Startup time
    {
	  "dstein64/vim-startuptime",
    opt =true,
    cmd = "Startuptime",
    },

    --Vista.vim
   {
   'liuchengxu/vista.vim',
    cmd = "Vista",
    ft = {'markdown','go','php','python','c','cpp','lua','java','vim'},
    config = function()
    vim.g.vista_default_executive = "nvim_lsp"
  end
   },
   --indent_blankline
   {
      "lukas-reineke/indent-blankline.nvim",
      setup = function()
        require("user.indent_blankline").setup()
      end,
      event = "BufRead",
    },
    --colorizer
    {
      "norcalli/nvim-colorizer.lua",
      config = function()
        require("user.colorizer").config()
      end,
      event = "BufRead",
    },
    --todo-comments
    {
      "folke/todo-comments.nvim",
      requires = "nvim-lua/plenary.nvim",
      config = function()
        require("todo-comments").setup()
      end,
      event = "BufRead",
    },
    --ts-rainbow
    {
    'p00f/nvim-ts-rainbow',
    after = "nvim-treesitter",
    },
    --ranger
    {
      'kevinhwang91/rnvimr',
      cmd = "RnvimrToggle",
      config = function ()
        require("rnvimr")
      end
    },
    --smartim
    {
      'ybian/smartim',
      event = {"InsertEnter"},
      config = function ()
        vim.g.smartim_default = 'com.apple.keylayout.ABC'
      end
    },
    --trouble
    {
      "folke/trouble.nvim",
        cmd = "TroubleToggle",
    },
    --lsp_signature
    {
      "ray-x/lsp_signature.nvim",
      config = function()
        require("user.lsp_signature").config()
      end,
      event = "BufRead",
    },
    --Emmet-vim
    {
      "mattn/emmet-vim",
      ft = {"html","css","markdown"},
      config = function ()
        require("user.emmet").config()
        vim.cmd([[
        source ~/.config/nvim/html-snippets.vim
        autocmd BufRead,BufNewFile *.md setlocal spell
        ]])
      end
    },
    {
    "Pocco81/AutoSave.nvim",
    config = function()
      require("autosave").setup()
    end,
    disable = true,
    },
  {
    "karb94/neoscroll.nvim",
    event = "WinScrolled",
    config = function()
    require('neoscroll').setup({
          -- All these keys will be mapped to their corresponding default scrolling animation
          mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
          '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
          hide_cursor = true,          -- Hide cursor while scrolling
          stop_eof = true,             -- Stop at <EOF> when scrolling downwards
          use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
          respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
          cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
          easing_function = nil,        -- Default easing function
          pre_hook = nil,              -- Function to run before the scrolling animation starts
          post_hook = nil,              -- Function to run after the scrolling animation ends
          })
    end
  },
  {
    "ZSaberLv0/ZFVimIM",
    event = "InsertEnter",
  },
  {
    'ZSaberLv0/ZFVimJob',
    event = "InsertEnter",
  },
  {
    'qdzhang/ZFVimIM_xiaohe',
    after="ZFVimIM",
  },
  {
    'numToStr/Navigator.nvim',
    config = function()
        require('Navigator').setup()
    end
  }
}
end
return M
