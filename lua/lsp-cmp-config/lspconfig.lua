local status, lspconfig = pcall(require, "lspconfig")
if not status then
  vim.notify("lspconfig not found")
  return
end

-- Language setup
lspconfig.lua_ls.setup({})
lspconfig.bashls.setup({})
lspconfig.clangd.setup({})
lspconfig.pylsp.setup({})
lspconfig.rust_analyzer.setup({})
lspconfig.jdtls.setup({})

---------------------------- Keymaps ---------------------------
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<leader>e", vim.diagnostic.open_float, opts)
map("n", "<leader>q", vim.diagnostic.setloclist)
map("n", "[d", vim.diagnostic.goto_prev, opts)
map("n", "]d", vim.diagnostic.goto_next, opts)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = { noremap = true, silent = true, buffer = ev.buf }

    map("n", "gD", vim.lsp.buf.declaration, bufopts)
    map("n", "gd", vim.lsp.buf.definition, bufopts)
    map("n", "gi", vim.lsp.buf.implementation, bufopts)
    map("n", "gr", vim.lsp.buf.references, bufopts)
    map("n", "K", vim.lsp.buf.hover, bufopts)
    map("n", "<leader>rn", vim.lsp.buf.rename, bufopts)
    map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', '<leader>F', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})
