vim.g.gitblame_display_virtual_text = 0 -- Disable virtual text
local git_blame = require("gitblame")
return {
	"f-person/git-blame.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = true,
	opts = function(_, opts)
		vim.g.gitblame_date_format = "%Y-%m-%d %H:%M:%S"
	end,

	require("lualine").setup({
		sections = {
			lualine_c = {
				{ git_blame.get_current_blame_text, cond = git_blame.is_blame_text_available },
			},
		},
	}),
}
