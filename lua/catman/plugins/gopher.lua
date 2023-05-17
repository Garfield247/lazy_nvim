local setup, gopher = pcall(require, "gopher")
if not setup then
	return
end
gopher.setup({
	commands = {
		go = "go",
		gomodifytags = "gomodifytags",
		impl = "impl",
		iferr = "iferr",
	},
})
