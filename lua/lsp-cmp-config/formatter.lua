local status, formatter = pcall(require, "formatter")
if not status then
  vim.notify("formatter not found")
  return
end
local util = require "formatter.util"

formatter.setup {
  filetype = {
    sh = require("formatter.filetypes.sh").shfmt,
    cpp = {
      function()
        return {
          exe = "clang-format",
          args = {
            "-assume-filename",
            util.escape_path(util.get_current_buffer_file_name()),
            "-style=google",
          },
          stdin = true,
          try_node_modules = true,
        }
      end
    },
    python = require("formatter.filetypes.python").black,
    rust = require("formatter.filetypes.rust").rustfmt,
    java = require("formatter.filetypes.java").clangformat,
  },
}

-- Keymaps
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<A-F>", ":Format<CR>", opts)
