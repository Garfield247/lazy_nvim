local setup, lazygit = pcall(require, "lazygit")
if not setup then
	return
end
-- lazygit.setup()

local keymap = vim.keymap
keymap.set("n", "<LEADER>lgt", ":LazyGit<CR>")
keymap.set("n", "<LEADER>lgf", ":LazyGitFilter<CR>")
