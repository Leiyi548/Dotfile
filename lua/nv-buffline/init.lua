---
---general setting
---
vim.opt.termguicolors = true

require("bufferline").setup{
options = {
	numbers = "none",
	close_command = "bdelete! %d",       -- can be a string | function, see "Mouse actions"
	right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
	left_mouse_command = "buffer %d",    -- can be a string | function, see "Mouse actions"
	middle_mouse_command = nil,          -- can be a string | function, see "Mouse actions"
	-- NOTE: this plugin is designed with this icon in mind,
	-- and so changing this is NOT recommended, this is intended
	-- as an escape hatch for people who cannot bear it for whatever reason
	indicator_icon = '▎',
	buffer_close_icon = '',
	modified_icon = '●',
	close_icon = '',
	left_trunc_marker = '',
	right_trunc_marker = '',
	name_formatter = function(buf)  -- buf contains a "name", "path" and "bufnr"
	if buf.name:match('%.md') then
		return vim.fn.fnamemodify(buf.name, ':t:r')
	end
end,
max_name_length = 25,
max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
tab_size = 25,
diagnostics = "nvim_lsp",
diagnostics_indicator = function(count, level, diagnostics_dict, context)
return "("..count..")"
	end,
	-- NOTE: this will be called a lot so don't do any heavy processing here
	custom_filter = function(buf_number)
	if vim.bo[buf_number].filetype ~= "<i-dont-want-to-see-this>" then
		return true
	end
	if vim.fn.bufname(buf_number) ~= "<buffer-name-I-dont-want>" then
		return true
	end
	if vim.fn.getcwd() == "<work-repo>" and vim.bo[buf_number].filetype ~= "wiki" then
		return true
	end
end,
offsets = {{filetype = "NvimTree", text = "File Explorer", text_align = "left"},
           {filetype = "undotree", text = "Undo History", text_align = "left"},
           {filetype = "Outline", text = "Outline Window", text_align = "right"},
           {filetype = "dbui", text = "Dbui", text_align = "left"},
           {filetype = "toggleterm", text = "Terminal", text_align = "right"}},
show_buffer_icons = true, -- disable filetype icons for buffers
show_buffer_close_icons = true,
show_close_icon = false,
show_tab_indicators = true,
persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
separator_style = "thick",
	enforce_regular_tabs = false,
	always_show_bufferline = true,
	}
}






