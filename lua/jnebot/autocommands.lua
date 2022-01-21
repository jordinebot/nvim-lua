vim.api.nvim_command([[
augroup AutoWikiSettings
autocmd FileType vimwiki :setlocal tw=120 wrap linebreak nolist spell formatoptions=cqt
augroup END 
]])
