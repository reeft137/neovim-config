local pj_status, project = pcall(require, "project_nvim")
if not pj_status then
  vim.notify("dashboard not found")
  return
end

project.setup({
  detection_methods = { "pattern" },
  patterns = { ".git", "Cargo.toml", "Makefile", "makefile"},
})

local ts_status, telescope = pcall(require, "telescope")
if not ts_status then
  vim.notify("telescope not found")
  return
end

pcall(telescope.load_extension, "projects")
