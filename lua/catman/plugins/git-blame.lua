return {
	"f-person/git-blame.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = true,
	opts = function(_, opts)
		vim.g.gitblame_date_format = "%Y-%m-%d %H:%M:%S"
	end,
}
