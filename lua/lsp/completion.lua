local has_words_before = function()
  if vim.api.nvim_buf_get_option(0, "buftype") == "prompt" then
    return false
  end
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end
local cmp = require'cmp'
local feedkey = function(key, mode)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end
-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'
local lspkind = require('lspkind')
-- 自动提示1 详情信息
local cmpFormat1 =  function(entry, vim_item)
	-- fancy icons and a name of kind
	vim_item.kind = require("lspkind").presets.default[vim_item.kind] ..
	" " .. vim_item.kind
	-- set a name for each source
	vim_item.menu = ({
		buffer = "[Buffer]",
		nvim_lsp = "[LSP]",
		ultisnips = "[UltiSnips]",
		nvim_lua = "[Lua]",
		cmp_tabnine = "[TabNine]",
		look = "[Look]",
		path = "[Path]",
		spell = "[Spell]",
	})[entry.source.name]
	return vim_item

end
-- 自动提示2 简洁信息
local cmpFormat2 = function(entry, vim_item)
	vim_item.kind = lspkind.presets.default[vim_item.kind]
	return vim_item
end

-- 自动提示3 详情信息
local cmpFormat3 =  function(entry, vim_item)
	-- fancy icons and a name of kind
	vim_item.kind = require("lspkind").presets.default[vim_item.kind] ..""
	-- set a name for each source
	vim_item.menu = ({
		buffer = "[Buffer]",
		nvim_lsp = "[LSP]",
		ultisnips = "[UltiSnips]",
		vsnip ="[vsnip]",
		nvim_lua = "[Lua]",
		cmp_tabnine = "[TabNine]",
		look = "[Look]",
		path = "[Path]",
		spell = "[Spell]",
		calc = "[Calc]",
		emoji = "[Emoji]"
	})[entry.source.name]
	return vim_item
  end
-- Setup nvim-cmp.

  cmp.setup({
	formatting = {
	  format = cmpFormat3
	},
    snippet = {
      expand = function(args)
        -- For `vsnip` user.
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` user.

        -- For `luasnip` user.
        -- require('luasnip').lsp_expand(args.body)

        -- For `ultisnips` user.
        -- vim.fn["UltiSnips#Anon"](args.body)
      end,
    },
    mapping = {
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-o>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),

    ["<Tab>"] = cmp.mapping(function(fallback)
      if vim.fn.pumvisible() == 1 then
        feedkey("<C-n>", "n")
      elseif vim.fn["vsnip#available"]() == 1 then
        feedkey("<Plug>(vsnip-expand-or-jump)", "")
      elseif has_words_before() then
        cmp.complete()
      else
        fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
      end
    end, { "i", "s" }),

    ["<S-Tab>"] = cmp.mapping(function()
      if vim.fn.pumvisible() == 1 then
        feedkey("<C-p>", "n")
      elseif vim.fn["vsnip#jumpable"](-1) == 1 then
        feedkey("<Plug>(vsnip-jump-prev)", "")
      end
    end, { "i", "s" }),
    },

    sources = {
      { name = 'nvim_lsp' },
	  { name = 'path'},

      -- For vsnip user.
      { name = 'vsnip' },

      -- For luasnip user.
      -- { name = 'luasnip' },

      -- For ultisnips user.
      -- { name = 'ultisnips' },

      { name = 'buffer' },
	  { name = 'orgmode'},
	  { naem = "cmp_tabnine"},
    }
  })

-- LspInstall的配置

--require'lspinstall'.setup() -- important

--local servers = require'lspinstall'.installed_servers()
--for _, server in pairs(servers) do
  --require'lspconfig'[server].setup{}
--end



require('lspconfig').lua.setup{
   settings = {
        Lua = {
            workspace = {
                checkThirdParty = false,
                maxPreload = 1500,
                preloadFileSize = 300
            },
			diagnostics = {
			  globals ={'vim','use'}
			}
        }
    }
}

  -- you need setup cmp first put this after cmp.setup()
  require("nvim-autopairs.completion.cmp").setup({
    map_cr = true, --  map <CR> on insert mode
    map_complete = true, -- it will auto insert `(` after select function or method item
    auto_select = true -- automatically select the first item
  })
