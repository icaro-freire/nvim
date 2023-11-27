-- configurando nvim-cmp
local cmp = require'cmp'
local lspkind = require('lspkind')

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'buffer' },
    { name = 'path'},
    {name = 'nvim_lua'}
  }),
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol',
      maxwidth = 50,
      ellipsis_char = '...',
    })
  }
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

-- If you want insert `(` after select function or method item
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)
--
-- configurando lspconfig.
--

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig')['bashls'].setup {
  capabilities = capabilities
}
require('lspconfig')['html'].setup {
  capabilities = capabilities
}
require('lspconfig')['ltex'].setup {
  capabilities = capabilities
}
require('lspconfig')['texlab'].setup {
  capabilities = capabilities
}
require("lspconfig")['lua_ls'].setup {
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {globals = {'vim'} }
    }
  }
}
require('lspconfig')['marksman'].setup {
  capabilities = capabilities
}
require('lspconfig')['matlab_ls'].setup {
  capabilities = capabilities
}
require('lspconfig')['pyright'].setup {
  capabilities = capabilities
}
require('lspconfig')['r_language_server'].setup {
  capabilities = capabilities
}

-- conjunto de snippets
require("luasnip.loaders.from_vscode").lazy_load()
