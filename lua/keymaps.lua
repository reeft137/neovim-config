-- Alias
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Split screen
map('n', '<leader>s', '<C-w>s', opts)
map('n', '<leader>v', '<C-w>v', opts)
map('n', '<leader>c', '<C-w>c', opts) -- Close current
map('n', '<leader>o', '<C-w>o', opts) -- Close Others

-- Move cursor amoung windows
map('n', '<A-j>', '<C-w>j', opts)
map('n', '<A-k>', '<C-w>k', opts)
map('n', '<A-h>', '<C-w>h', opts)
map('n', '<A-l>', '<C-w>l', opts)

-- Window resizing
map('n', '<C-Up>', ':resize +2<CR>', opts)
map('n', '<C-Down>', ':resize -2<CR>', opts)
map('n', '<C-Left>', ':vertical resize -2<CR>', opts)
map('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- Terminal mode
map('n', '<leader>t', ':new | resize -6 | terminal<CR>', opts)
map('t', '<Esc>', '<C-\\><C-n>', opts)

-- Continuous indentation in Visual mode
map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)

-- Move multiple lines in Visual mode
map('v', 'J', ":move '>+1<CR>gv=gv")
map('v', 'K', ":move '<-2<CR>gv=gv")

-- Scroll window
map('n', '<C-j>', '4j', opts)
map('v', '<C-j>', '4j', opts)
map('n', '<C-k>', '4k', opts)
map('v', '<C-k>', '4k', opts)
