local status, telescope = pcall(require, "telescope")
if not status then
  vim.notify("telescope not found")
  return
end

telescope.setup({
  defaults = {
    initial_mode = "normal",
  },
  pickers = {
    find_files = {
      -- theme = "ivy",
    }
  },
})

-- Keymaps
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<leader>p", ":Telescope find_files<CR>", opts) -- Find files
map("n", "<leader>f", ":Telescope live_grep<CR>", opts)  -- Global search
