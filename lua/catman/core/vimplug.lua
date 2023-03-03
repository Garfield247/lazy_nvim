local Plug = vim.fn["plug#"]

vim.call("plug#begin", "~/.config/nvim/plugged")

Plug("itchyny/vim-cursorword") --当前词加下划线显示
Plug("lfv89/vim-interestingwords") --选中词高亮

Plug("mg979/vim-visual-multi", { branch = "master" }) --多光标编辑
Plug("mbbill/undotree") --撤销重做历史记录

vim.call("plug#end")

local keymap = vim.keymap

keymap.set("n", "<LEADER>gl", ":call InterestingWords('n')<CR>")

vim.cmd([[
set undofile
set undodir=~/.vim/undodir
]])
