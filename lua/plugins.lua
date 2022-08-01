-- intalação de plugins =======================================================

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
-- LSP e AutoComplete ---------------------------------------------------------
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'
  use 'ray-x/lsp_signature.nvim'
  use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}
  use 'onsails/lspkind-nvim'
-- minhas preferências --------------------------------------------------------
  --use 'morhetz/gruvbox' ----------------------> tema de cores
  use 'ellisonleao/gruvbox.nvim' -------------> tema gruvbox em lua
  use 'vim-airline/vim-airline' --------------> barra de status
  use 'vim-airline/vim-airline-themes' -------> temas para barra de status
  use 'ryanoasis/vim-devicons' ---------------> icones nos arquivos
  use 'lukas-reineke/indent-blankline.nvim' --> linhas de indentação
  use 'tpope/vim-commentary' -----------------> comentar linhas
  use 'Raimondi/delimitMate' -----------------> fecha parênteses, etc.
  use 'preservim/nerdtree' -------------------> mostra os arquivos
  use 'jalvesaq/Nvim-R' ----------------------> para usar o R
end)



