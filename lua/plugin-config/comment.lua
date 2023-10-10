local status, comment = pcall(require, "Comment")
if not status then
  vim.notify("dashboard not found")
  return
end

comment.setup({
  toggler = {
    line = "<C-/>",
  },
  opleader = {
    line = "<C-/>",
  },
})
