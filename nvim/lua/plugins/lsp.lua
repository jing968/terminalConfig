require("mason").setup({
  ui = {
      icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
      }
  }
})

require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
  },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- require("lspconfig").lua_ls.setup {
--   capabilities = capabilities,
-- }

local nvim_lsp = require('lspconfig')

nvim_lsp.clangd.setup({})
nvim_lsp.gopls.setup({})
nvim_lsp.pyright.setup({})
nvim_lsp.terraformls.setup({})
nvim_lsp.denols.setup({})
nvim_lsp.lua_ls.setup {
  capabilities = capabilities
}
