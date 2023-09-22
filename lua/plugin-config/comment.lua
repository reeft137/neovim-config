local status, comment = pcall(require, "Comment")
if not status then
  vim.notify("dashboard not found")
  return
end

comment.setup()

-- Keymaps
local map = vim.keymap.set
local opts = { remap = true }

map("n", "<C-/>", "gcc", opts)
map("v", "<C-/>", "gc", opts)
