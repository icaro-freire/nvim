# Configurações pessoais para o Neovim

> Esse repositório servirá para versionamento de minhas configurações para o Neovim.

## Mais do que um editor ...

O [Neovim](https://neovim.io/) é escrito em [Lua](https://www.lua.org/), tornando-o extramamente rápido, leve e com muitos diferenciais positivos em relação ao clássico editor de textos [Vim](https://www.vim.org/), no qual é baseado. 

:white_check_mark: A possibilidade de não retirar as mão do teclado para edição de textos, foi o que me chamou atenção para esse editor.

## Árvore de diretórios

Esse repositório está organizado assim:

```bash
.config/nvim
├── init.lua
├── lua
│   ├── complete.lua
│   ├── lsp.lua
│   ├── mappings.lua
│   ├── plugins.lua
│   ├── settings.lua
│   └── tabnine.lua
└── README.md
```

## Créditos 

As configurações de LSP, Autocomplete e Machine Learning foram retiradas do artigo [LSP, Autocomplete e Machine Learning - Neovim com Lua](https://terminalroot.com.br/2021/11/lsp-autocomplete-e-machine-learning-neovim-com-lua.html). 

> :warning: Uma pequena modificação foi necessária, pois um dos _plugins_, a saber, [lspkind](https://github.com/onsails/lspkind.nvim), foi atalizado. 
Portanto, no arquivo [`tabnine.lua`](https://github.com/icaro-freire/neovim_config/blob/main/lua/tabnine.lua), contido no diretório `lua/`, deve-se colocar o comando `mode = 'symbol_text'`, no lugar de `with_text = true` (veja as linhas 79-80).

## Licença 

- Não há garantias! Use por sua conta em risco!
- Você pode fazer o que quiser com essa configuração!

