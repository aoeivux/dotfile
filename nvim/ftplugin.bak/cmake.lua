require("lspconfig").cmake.setup {
  cmd = { DATA_PATH .. "/lsp_servers/cmake/venv/bin/cmake-language-server" },
  on_attach = require("lsp").common_on_attach,
  filetypes = { "cmake" },
}
