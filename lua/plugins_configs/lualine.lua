
-- configurações do lualine
require('lualine').setup({
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'tabnine', 'lsp_progress'},
    lualine_x = {'encoding','fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  options = {
    theme = 'gruvbox'
    -- theme = 'catppuccin'
  }
})

