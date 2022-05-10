-- configuração para NERDTree =================================================
vim.cmd([[ let NERDTreeQuitOnOpen=1 ]])

-- configurando airline =======================================================
-- estilo simples de nome de abas
vim.cmd([[ let g:airline#extensions#tabline#formatter = 'unique_tail' ]])

-- mostra nome nas abas
vim.cmd([[ let g:airline#extensions#tabline#enabled = 1 ]])

-- configuração para tema de cores ============================================
vim.cmd([[ autocmd vimenter * ++nested colorscheme gruvbox ]])

-- congigurações básicas ======================================================
-- ativando sintaxe
vim.cmd([[ syntax enable ]])

-- habilita numeração
vim.cmd([[ set number ]])

-- habilita a numeração relativa
--vim.cmd([[ set relativenumber ]])

-- habilita o mouse 
vim.cmd([[ set mouse=a ]])

-- habilita área de transferência
vim.cmd([[ set clipboard=unnamedplus ]])

-- linha corrente destacada 
vim.cmd([[ set cursorline ]])

-- configurando a tabulação
vim.cmd([[ set tabstop=2 ]])
vim.cmd([[ set shiftwidth=2 ]]) -- autoidentação
vim.cmd([[ set expandtab ]])

-- linha vertical em 80 caracteres
vim.cmd([[ set colorcolumn=80 ]])

-- configuração do Packer =====================================================
-- faz a compilação automaticamente após instalação
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
