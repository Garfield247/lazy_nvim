--保存时删除行尾空白
vim.cmd([[
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
auto BufWritePre * sil %s/\s\+$//ge "
function! ViewInBrowser()
    let file = expand("%:p")
    if has("mac")
        let browsers = "open -a \"Google Chrome\""
        exec ":silent ! ". browsers  file
    endif
endfunction
]])
