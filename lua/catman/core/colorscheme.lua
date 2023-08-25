-- set colorscheme to nightfly with protected call
-- in case it isn't installed
local theme, _ = pcall(vim.cmd, "tokyonight")
if not theme then
	print("Colorscheme not found!") -- print error if colorscheme not installed
	return
end
