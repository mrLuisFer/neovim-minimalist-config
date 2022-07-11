pcall(require, "impatient")

-- Init Lua File
require("options")
require("options.autocmds")
require("options.filetypes")

require("themes")
require("themes.palenightfall")

require("mappings")
require("mappings.react-snippets")

require("plugins")
require("plugins.lsp")

require("plugins.alpha")
require("plugins.barbar")
require("plugins.bg-transparent")
require("plugins.bufferline")
require("plugins.cmp")
require("plugins.colorizer")
require("plugins.indent")
require("plugins.lualine")
require("plugins.luasnip")
require("plugins.telescope")
require("plugins.treelua")
require("plugins.treesitter")

require("plugins.git.signs")
