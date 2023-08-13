-- atalhos para LaTeX ======================================================
vim.cmd([[ map <C-b> :!arara -L pt-BR main.tex<CR>]])
vim.cmd([[ map <C-a> :!arara -L pt-BR -v main.tex<CR>]])
vim.cmd([[ map <C-z> :!zathura main.pdf<CR>]])



-- atalhos do NERDTree ==================================================== 
-- mostra arquivos
vim.cmd([[ nnoremap <C-n> :NERDTree<CR> ]])
vim.cmd([[ nnoremap <C-t> :NERDTreeToggle<CR> ]])
vim.cmd([[ nnoremap <C-f> :NERDTreeFind<CR> ]])

-- atalhos do airline ======================================================
-- altera as abas 
vim.cmd([[ map <C-h> :bprevious <CR> ]])
vim.cmd([[ map <C-l> :bnext <CR> ]])

-- fecha aba corrente
vim.cmd([[ map <A-q> :bdelete <CR> ]])

-- atalho do Commentary ====================================================
vim.cmd([[ vnoremap <space>/ :Commentary<CR> ]])

-- configurações gerais ====================================================
-- seleciona tudo com 'Crtl + a'
--vim.cmd([[ map <C-a> ggVG ]])
