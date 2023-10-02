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
require("plugin-config.nvim-cmp")
require("plugin-config.mason")
require("plugin-config.lspconfig")
require("plugin-config.comment")

-- Misc
require("lsp-ui") -- Better UI for LSP
