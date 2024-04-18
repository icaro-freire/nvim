## Configurações Pessoais para o Neovim

> Este repositório serve para versionamento de minhas configurações para o Neovim.

### O que é necessário para usar?

1. Instalar o Neovim (NVIM v0.10.0-dev-2944+g6488a9268)
2. Instalar o pacote `npm`
```bash
sudo apt instatall npm
```
3. Instalar o `tree-sitter-cli`
```bash
npm install -g tree-sitter-cli

```
4. Ter o `R` instalado.
5. Ter fontes adequadas instaladas ([Nerd Fonts](https://www.nerdfonts.com/font-downloads), por exemplo)
  - Symbols Nerd Font 
  - JetBrainsMono Nerd Font 

### Como instalar?

1. Mudar para o deretório `~/.config/`
2. Clonar esse repositório (ou fazer o _download_), no diretório do passo anterior 
```bash
git clone https://github.com/icaro-freire/nvim.git
```
3. Abrir o Neovim e esperar a instalação dos pacotes (pode demorar)

### Como é a árvore de diretórios dessa configuração?

```bash
.
├── lua/
│   ├── plugins_configs/
│   │   ├── barbar.lua
│   │   ├── cmpluasnip.lua
│   │   ├── colorscheme.lua
│   │   ├── gitsigns.lua
│   │   ├── ibl.lua
│   │   ├── init.lua
│   │   ├── lspconfig.lua
│   │   ├── lualine.lua
│   │   ├── notebook.lua
│   │   ├── nvim-tree.lua
│   │   ├── packer.lua
│   │   ├── tabnine.lua
│   │   └── treesitter.lua
│   ├── mappings.lua
│   ├── plugins.lua
│   └── settings.lua
├── snippets/
│   └── all.lua
├── spell/
│   └── pt.utf-8.spl
├── .gitignore
├── init.lua
└── README.md
```

### Qual a licença dessas configurações?

- Você é livre para modificar e distribuir essas configurações como desejar.
- Não há garantia em nada! Tudo é por sua conta em risco.
