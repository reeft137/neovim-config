-- Basic config
require("basic")

-- Plugins (lazy.nvim)
require("plugins")

-- Key mapping
require("keymaps")

-- Theme
require("theme")

-- Plugin config
require("plugin-config.nvim-treesitter")
require("plugin-config.nvim-tree")
require("plugin-config.bufferline")
require("plugin-config.lualine")
require("plugin-config.telescope")
require("plugin-config.project")
require("plugin-config.dashboard")
require("plugin-config.comment")

-- LSP & CMP config
require("lsp-cmp-config.nvim-cmp")
require("lsp-cmp-config.mason")
require("lsp-cmp-config.lspconfig")
require("lsp-cmp-config.lsp-ui")
require("lsp-cmp-config.formatter")
