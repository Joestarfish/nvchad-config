require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "tailwindcss",
  "tsserver",
  "jsonls",
  "gopls",
  "bashls",
  "intelephense",
  "pylsp",
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
