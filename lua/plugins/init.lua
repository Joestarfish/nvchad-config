return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "typescript-language-server",
        "json-lsp",
        "bash-language-server",
        "beautysh",
        "intelephense",
        "python-lsp-server",
      },
    },
  },

  -- test new blink
  { import = "nvchad.blink.lazyspec" },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "typescript",
        "json",
        "php",
        "python",
        "sql",
        "bash",
        "markdown",
      },
    },
  },

  -- Markview: https://github.com/OXY2DEV/markview.nvim
  {
    "OXY2DEV/markview.nvim",
    lazy = false,
  },

  -- mini.nvim icons: https://github.com/echasnovski/mini.nvim
  { "echasnovski/mini.nvim", version = false },
}
