local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  vim.notify("nvim-treesitter not found")
  return
end

treesitter.setup({
  -- Install language parser
  -- :TSInstallInfo (Check supported language)
  -- ensure_installed = "all",
  ensure_installed = {
    "c",
    "html",
    "make",
    "cpp",
    "vim",
    "vimdoc",
    "query",
    "lua",
    "markdown",
    "latex",
    "bash",
    "toml",
    "rust",
    "python",
    "gitignore"
  },
  -- Highlight
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
})

-- Folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 99
