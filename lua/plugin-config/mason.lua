local mason_status, mason = pcall(require, "mason")
if not mason_status then
  vim.notify("mason not found")
  return
end

local mlconf_status, mason_lsp = pcall(require, "mason-lspconfig")
if not mlconf_status then
  vim.notify("mason-lspconfig not found")
  return
end

mason.setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

mason_lsp.setup({
  -- A list of servers to automatically install if they're not already installed
  ensure_installed = {
    "lua_ls",
    "bashls",
    "pylsp",
    "rust_analyzer",
    "clangd",
    "marksman",
    "yamlls",
  },
})
