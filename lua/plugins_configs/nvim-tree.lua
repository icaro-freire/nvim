
-- desabilida o netrw (explorador padrão)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- habilita linha vertical no explorador
require("nvim-tree").setup({
  renderer = {
    indent_markers = {
      enable = true,
      icons = {
        corner = "└ ",
        edge = "│ ",
        item = "│ ",
        none = "  ",
      },
    },
  },
})

-- mapeamentos 
vim.keymap.set('n', '<leader>n', '<cmd>NvimTreeToggle<cr>')


