local setup, git_blame = pcall(require, "gitblame")
if not setup then
	return
end
-- Disable virtual text
vim.g.gitblame_display_virtual_text = 0
vim.g.gitblame_date_foramt = "%Y-%m-%d%H:%M:%S"
require("lualine").setup({
	sections = {
		lualine_c = {
			{ git_blame.get_current_blame_text, cond = git_blame.is_blame_text_available },
		},
	},
})
