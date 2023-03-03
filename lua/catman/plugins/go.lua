local setup, go = pcall(require, "go")
if not setup then
	return
end

-- Run gofmt on save
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.go",
	callback = function()
		require("go.format").gofmt()
	end,
	group = format_sync_grp,
})
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.go",
	callback = function()
		require("go.format").goimport()
	end,
	group = format_sync_grp,
})
-- enable go
go.setup()
