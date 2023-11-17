-- auto install lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- 插件列表
require('lazy').setup({
	"folke/tokyonight.nvim",
	"nvim-lua/plenary.nvim", -- lua functions that many plugins
	"bluz71/vim-nightfly-guicolors", -- preferred colorscheme
	"tanvirtin/monokai.nvim",
	"sainnhe/gruvbox-material",
	"christoomey/vim-tmux-navigator", -- tmux & split window navigation
	"szw/vim-maximizer", -- maximizes and restores current window
	-- essential plugins
	"tpope/vim-surround", -- add, delete, change surroundings (it's awesome)
	"vim-scripts/ReplaceWithRegister", -- replace with register contents using motion (gr + motion)
	-- commenting with gc
	"numToStr/Comment.nvim",
	-- 图标
	"kyazdani42/nvim-web-devicons",
	-- 文件浏览器
	-- nvim-tree
	{
		"kyazdani42/nvim-tree.lua",
		dependencies = "kyazdani42/nvim-web-devicons",
	},
	-- bufferline
	{
		"akinsho/bufferline.nvim",
		dependencies = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" },
	},

	-- 状态栏
	-- lualine
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "kyazdani42/nvim-web-devicons" },
	},

	-- FZF支持
	{ "nvim-telescope/telescope-fzf-native.nvim", build =  "make" }, -- dependency for better sorting performance
	{ "nvim-telescope/telescope.nvim", branch = "0.1.x" }, -- fuzzy finder

	-- 启动画面
	{
		"goolord/alpha-nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("alpha").setup(require("alpha.themes.startify").config)
		end,
	},
	-- 自动补全
	"hrsh7th/nvim-cmp", -- completion plugin
	"onsails/lspkind-nvim",
	"hrsh7th/cmp-buffer", -- source for text in buffer
	"hrsh7th/cmp-path", -- source for file system paths
	"hrsh7th/cmp-cmdline",
	-- 代码片段补全
	"hrsh7th/cmp-vsnip",
	"L3MON4D3/LuaSnip", -- snippet engine
	"saadparwaiz1/cmp_luasnip", -- for autocompletion
	"rafamadriz/friendly-snippets", -- useful snippets

	--For vsnip users.
	"hrsh7th/vim-vsnip",
	-- managing & installing lsp servers, linters & formatters
	"williamboman/mason.nvim", -- in charge of managing lsp servers, linters & formatters
	"williamboman/mason-lspconfig.nvim", -- bridges gap b/w mason & lspconfig

	-- configuring lsp servers
	"neovim/nvim-lspconfig", -- easily configure language servers
	"hrsh7th/cmp-nvim-lsp", -- for autocompletion
	{ "glepnir/lspsaga.nvim", branch = "main", dependencies = "kyazdani42/nvim-web-devicons" }, -- enhanced lsp uis
	-- { "kkharji/lspsaga.nvim" },
	"jose-elias-alvarez/typescript.nvim", -- additional functionality for typescript server (e.g. rename file & update imports)
	"onsails/lspkind.nvim", -- vs-code like icons for autocompletion

	-- Golang support
	{
		"olexsmir/gopher.nvim",
		dependencies = { -- dependencies
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
	},
	-- "fatih/vim-go",
	-- "ray-x/go.nvim",
	-- "ray-x/guihua.lua",
	--debug
	"mfussenegger/nvim-dap",
	{ "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap" } },
	"leoluz/nvim-dap-go",

	-- formatting & linting
	"jose-elias-alvarez/null-ls.nvim", -- configure formatters & linters
	"jayp0521/mason-null-ls.nvim", -- bridges gap b/w mason & null-ls

	-- treesitter configuration
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	"phaazon/hop.nvim",
	-- auto closing
	"windwp/nvim-autopairs", -- autoclose parens, brackets, quotes, etc...
	-- { "windwp/nvim-ts-autotag", after = "nvim-treesitter" }, -- autoclose tags

	-- git integration
	"lewis6991/gitsigns.nvim", -- show line modifications on left hand side

	-- 彩虹括号
	"p00f/nvim-ts-rainbow",
	-- git blame
	"f-person/git-blame.nvim",
	--lazygit
	"kdheepak/lazygit.nvim",
	-- terminal
	"akinsho/toggleterm.nvim",
	{ "michaelb/sniprun", build =  "bash ./install.sh 1"},
})
