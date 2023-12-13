return {
	"folke/which-key.nvim",
	enabled = false,
	event = "VeryLazy",
	init = function()
		vim.o.timeout = false
		vim.o.timeoutlen = 0
	end,
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
}
