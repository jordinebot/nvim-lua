local M = {}

function M.nnoremap(keys, action, options)
  options = options or {noremap = true, silent = true}
  vim.api.nvim_set_keymap('n', keys, action, options)
end

function M.inoremap(keys, action, options)
  options = options or {noremap = true, silent = true}
  vim.api.nvim_set_keymap('i', keys, action, options)
end

function M.vnoremap(keys, action, options)
  options = options or {noremap = true, silent = true}
  vim.api.nvim_set_keymap('v', keys, action, options)
end

return M
