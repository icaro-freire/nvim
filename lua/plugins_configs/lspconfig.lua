-- configuração padrão do mason
require("mason").setup()

-- instalando linguagens que uso
require("mason-lspconfig").setup({
  ensure_installed = {
    'bashls',
    'html',
    'ltex',
    'texlab',
    'lua_ls',
    'marksman',
    'matlab_ls',
    'pyright',
    'r_language_server'
  }
})

-- carregando os servidores

require("lspconfig").bashls.setup {}
require("lspconfig").html.setup {}
require("lspconfig").ltex.setup {}
require("lspconfig").texlab.setup {}
require("lspconfig").lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = {globals = {'vim'} }
    }
  }
}
require("lspconfig").marksman.setup {}
require("lspconfig").matlab_ls.setup {}
require("lspconfig").pyright.setup {}
require("lspconfig").r_language_server.setup {}
