local fn = vim.fn

local hasWindows = fn.has('win32') or fn.has('win64')
local languages = {}

if hasWindows then
  -- On windows, if you use "all", this takes to long for intall and maybe some crashs and bugs
  require 'nvim-treesitter.install'.compilers = { 'clang', "gcc" }
  languages = { 'astro', 'css', 'dockerfile', 'gitignore', 'go', 'graphql', 'html', 'java', 'javascript', 'jsdoc', 'json', 'tree-sitter-jsonc', 'lua', 'markdown', 'prisma', 'python', 'rust', 'ruby', 'scss', 'svelte', 'tsx', 'typescript', 'vue', 'vim', 'yaml', 'zig', 'c', 'cpp'}
else
  -- For Unix and Linux
  languages = "all"
end


require 'nvim-treesitter.configs'.setup {
  ensure_installed = languages,
  ignore_install = { 'phpdoc', 'haskell' },
  highlight = {
    enable = true,
  },
  textobjects = {
    enable = true,
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
      },
    },
    move = {
      enable = true,
      set_jumps = true, -- whether to set jumps in the jumplist
      goto_next_start = {
        ["]]"] = "@function.outer",
        ["]m"] = "@class.outer",
      },
      goto_next_end = {
        ["]["] = "@function.outer",
        ["]M"] = "@class.outer",
      },
      goto_previous_start = {
        ["[["] = "@function.outer",
        ["[m"] = "@class.outer",
      },
      goto_previous_end = {
        ["[]"] = "@function.outer",
        ["[M"] = "@class.outer",
      },
    },
    swap = {
      enable = true,
      swap_next = {
        ["~"] = "@parameter.inner",
      },
    },
  },
  sync_install = false,
  incremental_selection = {
    enable = false,
    keymaps = {
      init_selection    = "<leader>gnn",
      node_incremental  = "<leader>gnr",
      scope_incremental = "<leader>gne",
      node_decremental  = "<leader>gnt",
    },
  },
  indent = {
    enable = not hasWindows
  },
  rainbow = {
    enable = true
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
  textsubjects = {
    enable = true,
    keymaps = {
      ['<cr>'] = 'textsubjects-smart', -- works in visual mode
    }
  },
}
