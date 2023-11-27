-- carregando módulos

require 'settings'
require 'plugins'
require 'plugins_configs'
require 'mappings'

-- meus snippets
require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/snippets/"})
