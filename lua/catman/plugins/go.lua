return {
	"ray-x/go.nvim",
	dependencies = { -- optional packages
		"ray-x/guihua.lua",
		"neovim/nvim-lspconfig",
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		local setup, go = pcall(require, "go")
		if not setup then
			return
		end

		-- -- Run gofmt on save
		-- vim.api.nvim_create_autocmd("BufWritePre", {
		-- 	pattern = "*.go",
		-- 	callback = function()
		-- 		require("go.format").gofmt()
		-- 	end,
		-- 	group = format_sync_grp,
		-- })
		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*.go",
			callback = function()
				require("go.format").goimport()
			end,
			group = format_sync_grp,
		})
		-- enable go
		go.setup()
	end,
	event = { "CmdlineEnter" },
	ft = { "go", "gomod" },
	build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
}
