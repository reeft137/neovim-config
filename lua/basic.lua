-- Hint: use `:h <option>` to figure out the meaning if needed

-- Basic UI config
vim.opt.number = true        -- Show absolute line number
vim.opt.signcolumn = "yes"   -- Sign column for showing status
vim.opt.colorcolumn = "80"   -- Reference for the line length
vim.opt.scrolloff = 8        -- Number of screen lines to keep above and below the cursor
vim.opt.cursorline = true    -- Highlight cursor line
vim.opt.cmdheight = 1        -- Number of screen lines to use for the command-line
vim.opt.termguicolors = true -- Enable 24-bit RGB color in the TUI
vim.opt.splitbelow = true    -- open new vertical split bottom
vim.opt.splitright = true    -- open new horizontal splits right
vim.opt.showtabline = 2      -- Always show tabline
vim.opt.showmode = false     -- Hide mode hint like "-- INSERT --"

-- Completion UI config
vim.opt.completeopt = "menuone,noselect,noinsert" -- List of options for Insert mode completion
vim.opt.shortmess = vim.o.shortmess .. "c"        -- Don't give ins-completion-menu messages
vim.opt.pumheight = 10                            -- Number of lines for the completion menu

-- CMD UI config
vim.cmd([[ autocmd TermOpen * setlocal nonumber ]]) -- Turn off the terminal line number

-- Show space as dot
vim.opt.list = true -- Show invisible characters
vim.opt.listchars = "space:·"

-- Indent config
vim.opt.tabstop = 8        -- Number of spaces that a <Tab> in the file counts for
vim.opt.softtabstop = 2    -- Number of spaces that a <Tab> counts for while performing editing operations
vim.opt.shiftwidth = 2     -- Number of spaces to use for each step of (auto)indent
vim.opt.expandtab = true   -- Use the appropriate number of spaces to insert a <Tab>
vim.opt.shiftround = true  -- Round indent to multiple of 'shiftwidth' (N * shiftwidth)
vim.opt.autoindent = true  -- Copy indent from current line when starting a new line
vim.opt.smartindent = true -- Do smart autoindenting when starting a new line

-- Search config
vim.opt.incsearch = true  -- Search as characters are entered
vim.opt.ignorecase = true -- ignore case in searches by default
vim.opt.smartcase = true  -- but make it case sensitive if an uppercase is entered
vim.opt.hlsearch = false  -- Do not highlight matches

-- Disable netrw to use nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Set leader key (for keymaps)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Misc
vim.opt.clipboard = "unnamedplus" -- Use system clipboard
vim.opt.autoread = true           -- Automatically read the file when it is modified outside
vim.opt.mouse = "a"               -- Allow the mouse to be used in Neovim
vim.opt.updatetime = 1000         -- If this many milliseconds nothing is typed the swap file will be written to disk
vim.opt.timeoutlen = 500          -- Time in milliseconds to wait for a mapped sequence to complete
