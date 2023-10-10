local status, lspkind = pcall(require, "lspkind")
if not status then
  vim.notify("lspkind not found")
  return
end

lspkind.init({
  mode = "symbol_text",
  preset = "codicons",
  symbol_map = {
    Text = "󰉿",
    Method = "󰆧",
    Function = "󰊕",
    Constructor = "",
    Field = "󰜢",
    Variable = "󰀫",
    Class = "󰠱",
    Interface = "",
    Module = "",
    Property = "󰜢",
    Unit = "󰑭",
    Value = "󰎠",
    Enum = "",
    Keyword = "󰌋",
    Snippet = "",
    Color = "󰏘",
    File = "󰈙",
    Reference = "󰈇",
    Folder = "󰉋",
    EnumMember = "",
    Constant = "󰏿",
    Struct = "󰙅",
    Event = "",
    Operator = "󰆕",
    TypeParameter = "",
  },
})

local M = {}
M.formatting = {
  format = lspkind.cmp_format({
    mode = "symbol_text",
    maxwidth = 50,
    ellipsis_char = "...",

    before = function(entry, vim_item)
      vim_item.menu = "[" .. string.upper(entry.source.name) .. "]"
      return vim_item
    end
  })
}

return M
