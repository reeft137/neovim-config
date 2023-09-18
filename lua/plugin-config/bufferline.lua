local status, bufferline = pcall(require, "bufferline")
if not status then
  vim.notify("bufferline not found")
  return
end

-- bufferline config
-- https://github.com/akinsho/bufferline.nvim#configuration
bufferline.setup({
  options = {
    buffer_close_icon = '✕', -- icon for close tab
    close_command = "Bdelete %d", -- Command for close Tab
    right_mouse_command = "Bdelete %d", -- Command for close Tab using mouse
    -- Space for Tree. Show "File Explorer"
    offsets = {
      {
        filetype = "NvimTree",
        text = "EXPLORER",
        text_align = "left",
      },
    },
    diagnostics = "nvim_lsp",
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local s = " "
      for e, n in pairs(diagnostics_dict) do
        local sym = e == "error" and "  " or (e == "warning" and "  " or "  ")
        s = s .. n .. sym
      end
      return s
    end,
  },
})

-- Keymaps
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map('n', '<C-t>', ':enew<CR>', opts) -- Create new buffer
map('n', '<C-h>', ':BufferLineCyclePrev<CR>', opts)
map('n', '<C-l>', ':BufferLineCycleNext<CR>', opts)
map('n', '<C-w>', ':Bdelete<CR>', opts) --Close Tabs by vim-bbye
