require("lspconfig").texlab.setup {
  cmd = { DATA_PATH .. "/lsp_servers/latex/texlab" },
  on_attach = require("lsp").common_on_attach,
}
