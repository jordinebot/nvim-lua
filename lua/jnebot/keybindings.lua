local utils = require('jnebot.utils')

-- Essentials
utils.inoremap('jj', '<Esc>j')
utils.inoremap('kk', '<Esc>k')
utils.nnoremap('Q', '<Nop>')                      -- disable Ex mode (https://vi.stackexchange.com/a/2692/11899)

-- Text editing

utils.nnoremap('<C-k>', [[:m .-2<CR>==]])         -- move current line up
utils.nnoremap('<C-j>', [[:m .+1<CR>==]])         -- move current line down

utils.inoremap('<C-k>', [[<Esc>:m .-2<CR>==gi]])  -- move current line up
utils.inoremap('<C-j>', [[<Esc>:m .+1<CR>==gi]])  -- move current line down

utils.vnoremap('<C-k>', [[:m '<-2<CR>gv=gv]])     -- move current line up
utils.vnoremap('<C-j>', [[:m '>+1<CR>gv=gv]])     -- move current line down

-- Search and Replace
utils.nnoremap('<Esc>', ':nohlsearch<Bar>:echo<CR>')                                    -- remove highlighting of last search with <Esc>
utils.nnoremap('<Leader>r', [[:%s/\<<C-r><C-w>\>//g<Left><Left>]], {noremap = true})    -- replace the word under cursor

utils.nnoremap('<Leader>b', [[:s//&\r/g<CR>]])     -- add a \r after occurrences of last search
utils.vnoremap('<Leader>b', [[:s//&\r/g<CR>]])     -- add a \r after occurrences of last search


-- Buffers, Tabs, and Navigation
utils.nnoremap('<C-s>', [[:vsplit<CR>]])          -- create a vertical split
utils.nnoremap('<C-t>', ':tabnew<CR>')            -- create a new empty tab

utils.nnoremap('<Tab>', [[:bn<CR>]])              -- next buffer
utils.nnoremap('<S-Tab>', [[:bp<CR>]])            -- previous buffer

utils.nnoremap('<C-Tab>', ':tabNext<CR>')         -- next tab

utils.nnoremap('<Up>', [[<C-w><Up>]])             -- use arrows to navigate through splits
utils.nnoremap('<Down>', [[<C-w><Down>]])
utils.nnoremap('<Left>', [[<C-w><Left>]])
utils.nnoremap('<Right>', [[<C-w><Right>]])

utils.nnoremap('<C-c>', ':bp|bd #<CR>')           -- Close current buffer without losing split http://stackoverflow.com/a/4468491/1534704

utils.nnoremap('<Leader>z', [[:tabnew %<CR>]])    -- Zoom the current window to a new tab

-- Abbrebiations
vim.cmd[[ cnoreabbrev W wa ]]


-- Insert Content
utils.nnoremap('<Leader>d', [[:r !date +\%Y-\%m-\%d<CR>]])                      -- insert current date as YYYY-MM-DD

utils.nnoremap('<Leader>L', [["ayiwOconsole.log('<C-R>a:', <C-R>a);<Esc>]])     -- insert console.log above current line
utils.nnoremap('<Leader>l', [["ayiwoconsole.log('<C-R>a:', <C-R>a);<Esc>]])     -- insert console.log below current line
