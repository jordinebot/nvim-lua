-- This Lua configuration has been created following Emiliene Lemaire's quick guide:
-- (https://emilienl.medium.com/a-quick-guide-to-configure-neovim-in-lua-7c58a28e624c)

local opt = vim.opt

-- Essentials
vim.g.mapleader = ','                                       -- Set the <Leader> key ('/' is the default)

-- Behaviors
opt.belloff     = 'all'                                     -- NO BELLS!
opt.swapfile    = false                                     -- no swap files
opt.inccommand  = 'split'                                   -- preview %s commands in a split window as I type
opt.hidden      = true                                      -- move away from unsaved buffers
opt.updatetime  = 100                                       -- stop typing quickly
opt.undofile    = true                                      -- keep track of my 'undo's between sessions
opt.grepprg     = 'rg --vimgrep --smart-case --no-heading'  -- search with rg
opt.grepformat  = '%f:%l:%c:%m'                             -- filename:line number:column number:error message
opt.mouse       = 'a'                                       -- use mouse to scroll around in normal mode (hold shift to disable)

-- Look and feel
opt.number         = true                                   -- absolute numbers...
opt.relativenumber = true                                   -- ...and also relative. So, absolute in current line relative in others.
opt.cursorline     = true                                   -- highlight the current line
opt.colorcolumn    = '80,120'                               -- show ruler on columns 80 & 120
opt.list           = true                                   -- show list chars
opt.listchars      = {                                      -- these list chars
    -- tab      = '» ',
    tab      = '⇢ ',
    eol      = '↵',
    nbsp     = '␣',
    extends  = '…',
    precedes = '…',
    trail    = '·',
}
opt.scrolloff                = 10                           -- padding between cursor and top/bottom of window
opt.foldmethod               = 'marker'                     -- fold on {{{...}}} by default
opt.foldlevel                = 99                           -- default to all folds open
opt.foldlevelstart           = 99                           -- open files with all folds open
opt.splitright               = true                         -- prefer vsplitting to the right
opt.splitbelow               = true                         -- prefer splitting below
opt.wrap                     = false                        -- don't wrap my text

-- Indentation
vim.cmd [[
set autoindent
set smartindent
set tabstop=4
set noexpandtab
]]

-- Search
opt.path:append('.,**')                                     -- search from project root
opt.wildmenu      = true                                    -- tab complete on command line
opt.ignorecase    = true                                    -- case insensitive search...
opt.smartcase     = true                                    -- unless I use caps
opt.hlsearch      = true                                    -- highlight matching text
opt.incsearch     = true                                    -- search while I type

-- Theme
vim.o.background = 'dark'
vim.api.nvim_set_option('termguicolors', true)
vim.cmd([[
    colorscheme dracula
]])

-- Advanced configuration
require('jnebot.autocommands')
require('jnebot.keybindings')
require('jnebot.plugins')

vim.o.completeopt = 'menuone,noselect' -- required by nvim-compe


-- Documentation and useful resources
-- - Getting started using Lua in Neovim (https://github.com/nanotee/nvim-lua-guide)
-- - Neovim 0.5 features and the switch to init.lua (https://oroques.dev/notes/neovim-init/)
-- - Everything you need to know to configure neovim using lua (https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/)
