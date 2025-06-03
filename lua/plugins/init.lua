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
        "gopls",
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
        "go",
      },
    },
  },

  -- render-markdown.nvim: https://github.com/MeanderingProgrammer/render-markdown.nvim
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" },
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {
      anti_conceal = { enabled = false },
      checkbox = { checked = { scope_highlight = "@markup.strikethrough" } },
    },
    ft = { "markdown" },
  },

  -- mini.nvim icons: https://github.com/echasnovski/mini.nvim
  { "echasnovski/mini.nvim", version = false },

  -- nvim-ufo for code folding: https://github.com/kevinhwang91/nvim-ufo
  {
    "kevinhwang91/nvim-ufo",
    keys = {
      { "zc", mode = "n", desc = "Fold current line" },
      { "zo", mode = "n", desc = "Unfold current line" },
      { "za", mode = "n", desc = "Toggle fold current line" },
      { "zR", mode = "n", desc = "Unfold all lines" },
    },
    dependencies = "kevinhwang91/promise-async",
    opts = {
      provider_selector = function()
        return { "lsp", "indent" }
      end,
    },
    config = function(_, opts)
      require("ufo").setup(opts)
      vim.o.foldcolumn = "auto:9"
      vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
      vim.o.foldlevelstart = 99
      vim.o.foldenable = true
      vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
    end,
  },
}
