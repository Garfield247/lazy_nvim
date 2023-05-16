local setup, fterm = pcall(require, "FTerm")
if not setup then
	return
end
fterm.setup({
	border = "double",
	dimensions = {
		height = 0.9,
		width = 0.9,
	},
})
