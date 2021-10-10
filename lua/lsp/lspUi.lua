--lspkind
local cmp = require('cmp')
local lspkind = require('lspkind')

require('lspkind').init({
    cmp.setup {
      formatting = {
        format = function(entry, vim_item)
          vim_item.kind = lspkind.presets.default[vim_item.kind]
          return vim_item
       end
     }
   },
    -- enables text annotations
    --
    -- default: true
    with_text = true,

    -- default symbol map
    -- can be either 'default' (requires nerd-fonts font) or
    -- 'codicons' for codicon preset (requires vscode-codicons font)
    --
    -- default: 'default'
    preset = 'codicons',

    -- override preset symbols
    --
    -- default: {}
    symbol_map = {
      Text = "",
      Method = "",
      Function = "",
      Constructor = "",
      Field = "ﰠ",
      Variable = "",
      Class = "ﴯ",
      Interface = "",
      Module = "",
      Property = "ﰠ",
      Unit = "塞",
      Value = "",
      Enum = "",
      Keyword = "",
      Snippet = "",
      Color = "",
      File = "",
      Reference = "",
      Folder = "",
      EnumMember = "",
      Constant = "",
      Struct = "פּ",
      Event = "",
      Operator = "",
      TypeParameter = ""
    },
})
--这里判断lspconfig，因为判断lspkind会报错，目前原因不详
-- local status, _ = pcall(require, "lspconfig")
-- if (not status) then
-- 	return
-- end
-- require('lspkind').init({
--     -- enables text annotations
--     --
--     -- default: true
--     with_text = true,

--     -- default symbol map
--     -- can be either 'default' (requires nerd-fonts font) or
--     -- 'codicons' for codicon preset (requires vscode-codicons font)
--     --
--     -- default: 'default'
--     preset = 'codicons',

--     -- override preset symbols
--     --
--     -- default: {}
--     symbol_map = {
--       Text = "",
--       Method = "",
--       Function = "",
--       Constructor = "",
--       Field = "ﰠ",
--       Variable = "",
--       Class = "ﴯ",
--       Interface = "",
--       Module = "",
--       Property = "ﰠ",
--       Unit = "塞",
--       Value = "",
--       Enum = "",
--       Keyword = "",
--       Snippet = "",
--       Color = "",
--       File = "",
--       Reference = "",
--       Folder = "",
--       EnumMember = "",
--       Constant = "",
--       Struct = "פּ",
--       Event = "",
--       Operator = "",
--       TypeParameter = ""
--     },
-- })
-- Lspsaga
local saga = require 'lspsaga'
saga.init_lsp_saga {
    use_saga_diagnostic_sign = true,
    error_sign = '✗',
    warn_sign = '',
    hint_sign = '',
    infor_sign = '',
    dianostic_header_icon = '   ',
    code_action_icon = ' ',
    code_action_prompt = {
        enable = true,
        sign = true,
        sign_priority = 20,
        virtual_text = true,
    },
    finder_definition_icon = '  ',
    finder_reference_icon = '  ',
    max_preview_lines = 13, -- preview lines of lsp_finder and definition preview
    finder_action_keys = {
        open = 'o', vsplit = 's',split = 'i',quit = 'q',scroll_down = '<M-f>', scroll_up = '<M-b>' -- quit can be a table
    },
    code_action_keys = {
        quit = 'q',exec = '<CR>'
    },
    rename_action_keys = {
        quit = '<C-c>',exec = '<CR>'  -- quit can be a table
    },
    definition_preview_icon = ' ',
    border_style = "plus",
    rename_prompt_prefix = '➤',
    server_filetype_map = {metals = {'sbt', 'scala'}},
}

