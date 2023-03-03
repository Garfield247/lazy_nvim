-- import comment plugin safely
local setup, bufferline = pcall(require, "bufferline")
if not setup then
	return
end

bufferline.setup({

	options = {
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
