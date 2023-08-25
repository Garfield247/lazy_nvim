
local setup, sniprun = pcall(require, "sniprun")
if not setup then
	return
end
sniprun.setup({
    interpreter_options = {
        Go_original = {
            compiler = "gccgo"
            }
        }
    }
})
