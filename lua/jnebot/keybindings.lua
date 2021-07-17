local utils = require('jnebot.utils')

-- Essentials
utils.inoremap('jj', '<Esc>j')
utils.inoremap('kk', '<Esc>k')
utils.nnoremap('Q', '<Nop>') -- disable Ex mode (https://vi.stackexchange.com/a/2692/11899)

-- Text editing

utils.nnoremap('<C-k>', [[:m .-2<CR>==]])         -- move current line up
utils.nnoremap('<C-j>', [[:m .+1<CR>==]])         -- move current line down

utils.inoremap('<C-k>', [[<Esc>:m .-2<CR>==gi]])  -- move current line up
utils.inoremap('<C-j>', [[<Esc>:m .+1<CR>==gi]])  -- move current line down

utils.vnoremap('<C-k>', [[:m '<-2<CR>gv=gv]])     -- move current line up
utils.vnoremap('<C-j>', [[:m '>+1<CR>gv=gv]])     -- move current line down

-- Search and Replace
utils.nnoremap('<Esc>', ':nohlsearch<Bar>:echo<CR>') -- remove highlighting of last search with <Esc>
utils.nnoremap('<Leader>r', [[:%s/\<<C-r><C-w>\>//g<Left><Left>]])


-- Buffers and Navigation
utils.nnoremap('<C-s>', [[:vsplit<CR>]])     -- create a vertical split

utils.nnoremap('<Leader>.', [[:ls<CR>:b]])  -- list all buffers
utils.nnoremap('<Tab>', [[:bn<CR>]])        -- next buffer
utils.nnoremap('<S-Tab>', [[:bp<CR>]])      -- previous buffer

utils.nnoremap('<Up>', [[<C-w><Up>]])       -- use arrows to navigate through splits
utils.nnoremap('<Down>', [[<C-w><Down>]])
utils.nnoremap('<Left>', [[<C-w><Left>]])
utils.nnoremap('<Right>', [[<C-w><Right>]])
