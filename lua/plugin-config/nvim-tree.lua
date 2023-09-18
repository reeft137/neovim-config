local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
  vim.notify("nvim-tree not found")
  return
end

-- nvim-tree config
-- https://github.com/nvim-tree/nvim-tree.lua/blob/master/doc/nvim-tree-lua.txt
nvim_tree.setup({
  sort = {
    sorter = "case_sensitive",
  },
  git = {
    enable = false,
  },
  -- sync_root_with_cwd = true,
  -- update_focused_file = {
  --   enable = true,
  --   update_root = true,
  -- },
  -- Hide dotfiles
  filters = {
    dotfiles = true,
  },
  view = {
    width = 28,
  },
  renderer = {
    group_empty = true,
  },
})

-- Keymaps
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map('n', '<leader>m', ':NvimTreeToggle<CR>', opts) -- Open & close tree

-- Quit after last buffer has been closed
vim.cmd([[
  autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
]])
