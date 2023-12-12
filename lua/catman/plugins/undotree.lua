return {
	"mbbill/undotree",
	lazy = false,
	cmd = { "UndotreeShow", "UndotreeToggle", "UndotreeHide", "UndotreeFocus" },
	keys = {
		{ "<leader>uu", "<cmd> UndotreeToggle<CR>", desc = "Undo Tree" },
	},
	config = function()
		vim.cmd([[
      set undofile
      set undodir=~/.undodir

    ]])
	end,
}
