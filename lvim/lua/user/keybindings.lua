local M={}

M.config = function()
   --Generates keybindings
   vim.opt.relativenumber = true
   vim.opt.cmdheight = 1
   vim.opt.timeoutlen = 500

   lvim.keys.normal_mode["<esc><esc>"] = "<cmd>nohlsearch<cr>"
   lvim.keys.normal_mode["H"] = "0"
   lvim.keys.normal_mode["L"] = "$"
   lvim.keys.normal_mode["<leader>sc"] = "<cmd>nohlsearch<cr>"
   --quickcopy
   lvim.keys.normal_mode["Y"] = "y$"
-- lvim.keys.normal_mode["<leader>y"] = '"+y'
   -- lvim.keys.normal_mode["<leader>yy"] = '"+yy'
   -- lvim.keys.normal_mode["<leader>p"] = '"+p"'

   -- X closes a buffer
   lvim.keys.normal_mode["<S-x>"] = ":BufferClose<CR>"
   -- accelerated-jk
   vim.api.nvim_set_keymap('n','j','<Plug>(accelerated_jk_gj)',{ silent=true })
   vim.api.nvim_set_keymap('n','k','<Plug>(accelerated_jk_gk)',{ silent=true })
   -- run 保持终端
   vim.api.nvim_set_keymap('t','<Esc>',"<C-\\><C-n>",{silent=true})
   --whichkey
   lvim.builtin.which_key.mappings = {
      ["q"] = { "<cmd>q!<CR>", "Quit" },
      --["/"] = { "<cmd>lua require('Comment').toggle()<CR>", "Comment" },
      ["c"] = { "<cmd>BufferClose!<CR>", "Close Buffer" },
      --["f"] = { "<cmd>Telescope find_files<CR>", "Find File" },
      --["h"] = { "<cmd>nohlsearch<CR>", "No Highlight" },
      --Whichkey-b
      b = {
        name = "Buffers",
        j = { "<cmd>BufferPick<cr>", "Jump" },
        f = { "<cmd>Telescope buffers<cr>", "Find" },
        b = { "<cmd>b#<cr>", "Previous" },
        w = { "<cmd>BufferWipeout<cr>", "Wipeout" },
        e = {
          "<cmd>BufferCloseAllButCurrent<cr>",
          "Close all but current",
        },
        h = { "<cmd>BufferCloseBuffersLeft<cr>", "Close all to the left" },
        l = {
          "<cmd>BufferCloseBuffersRight<cr>",
          "Close all to the right",
        },
        D = {
          "<cmd>BufferOrderByDirectory<cr>",
          "Sort by directory",
        },
        L = {
          "<cmd>BufferOrderByLanguage<cr>",
          "Sort by language",
        },
      },
      --Whichkey-p
      p = {
        name = "Packer",
        c = { "<cmd>PackerCompile<cr>", "Compile" },
        i = { "<cmd>PackerInstall<cr>", "Install" },
        r = { "<cmd>lua require('lvim.utils').reload_lv_config()<cr>", "Reload" },
        s = { "<cmd>PackerStatus<cr>", "Status" },
        S = { "<cmd>PackerSync<cr>", "Sync" },
        u = { "<cmd>PackerUpdate<cr>", "Update" },
      },
      --Whichkey-E
      E = {
        name = "Hello",
        v = { "<cmd>Vista<CR>", "Vista" },
	      u = { "<cmd>UndotreeToggle<CR>","UndoTree"},
      },
      --Whichkey-t
      t = {
        name = "Terminal",
        r = { "<cmd>RnvimrToggle<CR>", "ranger" },
	      a = { "<cmd>RnvimrResize<CR>", "resize"},
      },
      --Whichkey-r
      r = {
        name = "Run",
         t = { "<cmd>AsyncTask file-run<CR>", "Run on default terminal" },
	       f = { "<cmd>AsyncTask file-run-floaterm<CR>","Run on floaterm" }
      },
      --Whichkey-f
      f = {
        name = "+File",
        b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
        c = { "<cmd>Telescope colorscheme<CR>", "Change colorscheme" },
        C = { "<cmd>Telescope commands<cr>", "Commands" },
	      f = { "<cmd>Telescope find_files<CR>", "Find File" },
        H = { "<cmd>Telescope help_tags<cr>", "Find Help" },
        k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
        n = { "<cmd>enew<cr>", "New File" },
        r = { "<cmd>Telescope oldfiles<CR>", "Open Recent File" },
        R = { "<cmd>Telescope registers<cr>", "Registers" },
        t = { "<cmd>Telescope live_grep<cr>", "Text" },
      },
      --which_key-x
      x = {
        name = "Diagnostics",
        t = { "<cmd>TroubleToggle<cr>", "trouble" },
        w = { "<cmd>TroubleToggle lsp_workspace_diagnostics<cr>", "workspace" },
        d = { "<cmd>TroubleToggle lsp_document_diagnostics<cr>", "document" },
        q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
        l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
        r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
      },
      --Whichkey-g
      g = {
        name = "Git",
        j = { "<cmd>lua require 'gitsigns'.next_hunk()<cr>", "Next Hunk" },
        k = { "<cmd>lua require 'gitsigns'.prev_hunk()<cr>", "Prev Hunk" },
        l = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame" },
        p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
        r = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
        R = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
        s = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
        u = {
          "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
          "Undo Stage Hunk",
        },
        o = { "<cmd>Telescope git_status<cr>", "Open changed file" },
        b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
        c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
        C = {
          "<cmd>Telescope git_bcommits<cr>",
          "Checkout commit(for current file)",
        },
        d = {
          "<cmd>Gitsigns diffthis HEAD<cr>",
          "Git Diff",
        },
      },
      --Whichkey-l
      l = {
        name = "LSP",
        a = { "<cmd>lua require('lvim.core.telescope').code_actions()<cr>", "Code Action" },
        d = {
          "<cmd>Telescope lsp_document_diagnostics<cr>",
          "Document Diagnostics",
        },
        w = {
          "<cmd>Telescope lsp_workspace_diagnostics<cr>",
          "Workspace Diagnostics",
        },
        f = { "<cmd>lua vim.lsp.buf.formatting()<cr>", "Format" },
        i = { "<cmd>LspInfo<cr>", "Info" },
        I = { "<cmd>LspInstallInfo<cr>", "Installer Info" },
        j = {
          "<cmd>lua vim.lsp.diagnostic.goto_next({popup_opts = {border = lvim.lsp.popup_border}})<cr>",
          "Next Diagnostic",
        },
        k = {
          "<cmd>lua vim.lsp.diagnostic.goto_prev({popup_opts = {border = lvim.lsp.popup_border}})<cr>",
          "Prev Diagnostic",
        },
        l = { "<cmd>lua vim.lsp.codelens.run()<cr>", "CodeLens Action" },
        p = {
          name = "Peek",
          d = { "<cmd>lua require('lvim.lsp.peek').Peek('definition')<cr>", "Definition" },
          t = { "<cmd>lua require('lvim.lsp.peek').Peek('typeDefinition')<cr>", "Type Definition" },
          i = { "<cmd>lua require('lvim.lsp.peek').Peek('implementation')<cr>", "Implementation" },
        },
        q = { "<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>", "Quickfix" },
        r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
        s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
        S = {
          "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
          "Workspace Symbols",
        },
      },
      --Whichkey-L
      L = {
        name = "+LunarVim",
        c = {
          "<cmd>edit" .. get_config_dir() .. "/config.lua<cr>",
          "Edit config.lua",
        },
        f = {
          "<cmd>lua require('lvim.core.telescope.custom-finders').find_lunarvim_files()<cr>",
          "Find LunarVim files",
        },
        g = {
          "<cmd>lua require('lvim.core.telescope.custom-finders').grep_lunarvim_files()<cr>",
          "Grep LunarVim files",
        },
        k = { "<cmd>lua require('lvim.keymappings').print()<cr>", "View LunarVim's default keymappings" },
        i = {
          "<cmd>lua require('lvim.core.info').toggle_popup(vim.bo.filetype)<cr>",
          "Toggle LunarVim Info",
        },
        I = {
          "<cmd>lua require('lvim.core.telescope.custom-finders').view_lunarvim_changelog()<cr>",
          "View LunarVim's changelog",
        },
        l = {
          name = "+logs",
          d = {
            "<cmd>lua require('lvim.core.terminal').toggle_log_view(require('lvim.core.log').get_path())<cr>",
            "view default log",
          },
          D = {
            "<cmd>lua vim.fn.execute('edit ' .. require('lvim.core.log').get_path())<cr>",
            "Open the default logfile",
          },
          l = { "<cmd>lua require('lvim.core.terminal').toggle_log_view(vim.lsp.get_log_path())<cr>", "view lsp log" },
          L = { "<cmd>lua vim.fn.execute('edit ' .. vim.lsp.get_log_path())<cr>", "Open the LSP logfile" },
          n = {
            "<cmd>lua require('lvim.core.terminal').toggle_log_view(os.getenv('NVIM_LOG_FILE'))<cr>",
            "view neovim log",
          },
          N = { "<cmd>edit $NVIM_LOG_FILE<cr>", "Open the Neovim logfile" },
          p = {
            "<cmd>lua require('lvim.core.terminal').toggle_log_view('packer.nvim')<cr>",
            "view packer log",
          },
          P = { "<cmd>exe 'edit '.stdpath('cache').'/packer.nvim.log'<cr>", "Open the Packer logfile" },
        },
        r = { "<cmd>lua require('lvim.utils').reload_lv_config()<cr>", "Reload configurations" },
        u = { "<cmd>LvimUpdate<cr>", "Update LunarVim" },
      },
      --Whichkey-s
      s = {
        name = "Search",
        c = {name="clear-search-result"},
        p = { "<cmd>HopPattern<CR>", "search like /" },
	      s = { "<cmd>HopChar2<CR>","search by char2" },
        S = { "<cmd>HopChar1<CR>","search by char1" },
        w = { "<cmd>HopWord<CR>", "search word" },
	      l = { "<cmd>HopLine<CR>","search line" },
      },
        T = {
        name = "Treesitter",
        i = { ":TSConfigInfo<cr>", "Info" },
      },
}

end

return M
