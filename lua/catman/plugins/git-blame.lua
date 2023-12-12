return {
	"f-person/git-blame.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = true,
	opts = function(_, opts)
		vim.g.gitblame_date_format = "%Y-%m-%d %H:%M:%S"
		local setup, git_blame = pcall(require, "gitblame")
		if not setup then
			return
		end
		-- Disable virtual text
		vim.g.gitblame_display_virtual_text = 0
		-- vim.g.gitblame_date_foramt = "%Y-%m-%d%H:%M:%S"
		require("lualine").setup({
			sections = {
				lualine_c = {
					{ git_blame.get_current_blame_text, cond = git_blame.is_blame_text_available },
				},
			},
		})
	end,
}
