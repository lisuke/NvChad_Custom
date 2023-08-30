local M = {}

M.cmp = {
  sources = {
    name = "nvim_lsp",
    priority = 10,
    keyword_length = 6,
    group_index = 1,
    max_item_count = 30,
  },
  performance = {
    trigger_debounce_time = 500,
    throttle = 550,
    fetching_timeout = 80,
  },
}

M.treesitter = {
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn", -- set to `false` to disable one of the mappings
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
  ensure_installed = {
    -- defaults
    "vim",
    "lua",
    "vimdoc",

    -- web dev
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "json",
    "vue",
    "scss",

    -- git ?
    "diff",
    "gitignore",
    "git_config",
    "git_rebase",
    "gitcommit",

    -- build ?
    "meson",
    "ninja",
    "cmake",
    "make",
    "nix",

    -- text ?
    "dockerfile",
    "markdown_inline",
    "markdown",
    "latex",
    "toml",
    "yaml",
    "rst",
    "regex",
    "ini",

    -- ? ?
    "bash",
    "awk",
    "sql",

    -- high ?
    "python",
    "kotlin",
    "java",
    "rust",
    "cpp",
    "go",

    -- low level
    "c",
    "zig",
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",
  },
}

-- git support in nvimtree
M.nvimtree = {
  filters = {
    dotfiles = true,
    custom = { "node_modules" },
  },

  git = {
    enable = true,
    ingore =false,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.blankline = {
  filetype_exclude = {
    "help",
    "terminal",
    "lazy",
    "lspinfo",
    "TelescopePrompt",
    "TelescopeResults",
    "mason",
    "lsp-installer",
    "norg",
    "",
  },
}

M.telescope = {
  extensions_list = { "themes", "terms", "lazygit", "workspaces" },
}

M.mason = {
  ui = {
    icons = {
      package_pending = " ",
      package_installed = " ",
      package_uninstalled = " ",
    },
  },
  ensure_installed = {
    -- Lua
    "lua-language-server",
    "stylua",

    -- HTML CSS
    "css-lsp",
    "html-lsp",
    "emmet-ls",
    "cssmodules-language-server",
    "tailwindcss-language-server",

    -- TypeScript, JavaScript
    "deno",
    "typescript-language-server",
    "eslint_d",
    "prettier",

    -- Rust
    "rust-analyzer",
    "rustfmt",

    -- Go
    "gopls",
    "goimports",

    --Python
    "pyright",
    "pylama",

    -- Shell
    "shfmt",
    "shellcheck",

    -- Yaml
    "yaml-language-server",

    -- Json
    "json-lsp",

    -- Docker
    "dockerfile-language-server",
  },
}

return M
