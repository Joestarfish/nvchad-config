require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "tailwindcss",
  "ts_ls",
  "jsonls",
  "bashls",
  "intelephense",
  "pylsp",
  "gopls",
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
