local keymap = vim.keymap
local setup, toggleterm = pcall(require, "toggleterm")
if not setup then
	return
end
toggleterm.setup()
function _G.set_terminal_keymaps()
	local opts = { buffer = 0 }
	keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
	keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

keymap.set("n", "<LEADER>T", ":ToggleTerm<CR>")

keymap.set("n", "<LEADER>TF", ":ToggleTerm direction=float<CR>")
keymap.set("n", "<LEADER>TT", ":ToggleTerm direction=tab<CR>")
keymap.set("n", "<LEADER>TH", ":ToggleTerm direction=horizontal<CR>")
keymap.set("n", "<LEADER>TV", ":ToggleTerm direction=vertical size=50<CR>")
