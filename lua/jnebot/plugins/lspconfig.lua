-- https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md
-- https://github.com/neovim/nvim-lspconfig


local utils = require('jnebot.utils')

local options = { noremap = true, silent = true }

utils.nnoremap('gd', '<cmd>lua vim.lsp.buf.definition()<CR>', options)
utils.nnoremap('gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', options)
utils.nnoremap('gr', '<cmd>lua vim.lsp.buf.references()<CR>', options)
utils.nnoremap('gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', options)
utils.nnoremap('K', '<cmd>lua vim.lsp.buf.hover()<CR>', options)
utils.nnoremap('<Leader>K', '<cmd>lua vim.lsp.buf.signature_help()<CR>', options)
-- utils.nnoremap("<Leader>p", "<cmd>lua vim.lsp.buf.formatting()<CR>", options)

utils.nnoremap('<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', options)
utils.nnoremap('<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', options)
utils.nnoremap('<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', options)
utils.nnoremap('<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', options)
utils.nnoremap('<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', options)
utils.nnoremap('<Leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', options)
utils.nnoremap('<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', options)
utils.nnoremap('[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', options)
utils.nnoremap(']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', options)
utils.nnoremap('<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', options)

require'lspconfig'.tsserver.setup{}
