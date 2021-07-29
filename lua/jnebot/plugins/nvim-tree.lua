local utils = require('jnebot.utils')

vim.cmd[[
  let g:nvim_tree_auto_close = 1
  let g:nvim_tree_auto_resize = 0
  let g:nvim_tree_disable_window_picker = 1
  let g:nvim_tree_git_hl = 1
  let g:nvim_tree_gitignore = 1
  let g:nvim_tree_ignore = ['.git', 'node_modules']
  let g:nvim_tree_width = 40
]]

utils.nnoremap('<C-n>', ':NvimTreeToggle<CR>')
utils.nnoremap('<Leader>R', ':NvimTreeRefresh<CR>')

