local status, formatter = pcall(require, "formatter")
if not status then
  vim.notify("formatter not found")
  return
end

formatter.setup {
  filetype = {
    sh = require("formatter.filetypes.sh").shfmt,
    python = require("formatter.filetypes.python").black,
    rust = require("formatter.filetypes.rust").rustfmt,
  },
}

-- Keymaps
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<A-F>", ":Format<CR>", opts)
