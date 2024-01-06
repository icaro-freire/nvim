-- função para instalação automática
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
      'git', 'clone', '--depth', '1',
      'https://github.com/wbthomason/packer.nvim', install_path
    })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

-- criando variável 
local packer_bootstrap = ensure_packer()

-- instalando plugins
return require('packer').startup(function(use)
  --
  -- gerenciador de plugins 
  use 'wbthomason/packer.nvim' ---------------------------------------> packer
  --
  -- lsp e mason
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
  }
  --
  -- cmp & LuaSnip
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use {
    'L3MON4D3/LuaSnip',
    tag = 'v2.*',
    dependencies = { "rafamadriz/friendly-snippets" },
  }
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'
  use 'onsails/lspkind.nvim'
  -- 
  -- tabnine machine learning
  use { 'codota/tabnine-nvim', run = "./dl_binaries.sh" }
  --
  -- estética
  use { "ellisonleao/gruvbox.nvim" }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }
  use 'nvim-tree/nvim-web-devicons' ---------------------> icones nos arquivos
  use {
    'nvim-lualine/lualine.nvim', -----------------------------> barra inferior
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use 'romgrk/barbar.nvim' --------------------------------> abas dos arquivos
  use {
    'nvim-tree/nvim-tree.lua', -----------------------> explorador de arquivos
    requires = { 'nvim-tree/nvim-web-devicons' },
  }
  use 'lukas-reineke/indent-blankline.nvim' -------> linha vertical indentação
  use {
    'numToStr/Comment.nvim', ---------------------------> para comentar código
    config = function()
        require('Comment').setup()
    end
  }
  use {
	  "windwp/nvim-autopairs", --------------------> autocompletar delimitadores
    config = function() require("nvim-autopairs").setup {} end
  }
  --
  -- programação & cia
  use 'jalvesaq/Nvim-R' ---------------------------------------> para usar o R
  use 'jalvesaq/vimcmdline' ------------------------------------> python & cia
  use({
    "iamcco/markdown-preview.nvim", ------------------------> markdown preview
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  use 'lewis6991/gitsigns.nvim' -------------------------------> status do git
  use {"meatballs/notebook.nvim"} --------------------> abrir jupyter notebook
  --
  -- final do bootstrap
  if packer_bootstrap then
    require('packer').sync()
  end
end)
