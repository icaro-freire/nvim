-- configurações no nvim-treesitter

require'nvim-treesitter.configs'.setup {
  ensure_installed = { ------------------------> instala as linguagens que uso
    "bash",
    "bibtex",
    "cmake",
    "css",
    "git_config",
    "git_rebase",
    "gitattributes",
    "gitcommit",
    "gitignore",
    "html",
    "latex",
    "lua",
    "make",
    "markdown",
    "matlab",
    "python",
    "r",
    "vim",
    "comment",
  },
  --
  highlight = {
    enable = true,  -------------------------------> ativa o realce de sintaxe
  },
  --
  indent = {
    enable = true,  -----------------------------> ativa indentação automática
  },
}

