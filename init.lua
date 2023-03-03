--setup paker
require("catman.plugins_setup")
-- load base config
require("catman.core.options")
require("catman.core.keymaps")
require("catman.core.colorscheme")
require("catman.core.vimplug")

-- load extension config
require("catman.plugins.nvim-tree")
require("catman.plugins.comment")
require("catman.plugins.bufferline")
require("catman.plugins.dashboard")
require("catman.plugins.lualine")
require("catman.plugins.telescope")
require("catman.plugins.nvim-cmp")
require("catman.plugins.lsp.mason")
require("catman.plugins.lsp.lspsaga")
require("catman.plugins.lsp.lspconfig")
require("catman.plugins.lsp.null-ls")
require("catman.plugins.autopairs")
require("catman.plugins.lastplace")
require("catman.plugins.treesitter")
require("catman.plugins.gitsigns")
require("catman.plugins.hop")
require("catman.plugins.undotree")
require("catman.plugins.go")
