-- import comment plugin safely
local setup, bufferline = pcall(require, "bufferline")
if not setup then
	return
end

bufferline.setup({

	options = {
		buffer_close_icon = "󰅖",
		modified_icon = "●",
		close_icon = "",
		left_trunc_marker = "",
		right_trunc_marker = "",
		-- 使用 nvim 内置lsp
		diagnostics = "nvim_lsp",
		-- 左侧让出 nvim-tree 的位置
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				highlight = "Directory",
				text_align = "left",
			},
		},
	},
})

-- keymap
local keymap = vim.keymap
keymap.set("n", "th", ":BufferLineCyclePrev<CR>")
keymap.set("n", "tl", ":BufferLineCycleNext<CR>")
