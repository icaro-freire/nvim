
-- mapeamentos para LaTeX
vim.keymap.set('n', '<leader>b', ':! arara -L pt-BR main.tex <cr>')
vim.keymap.set('n', '<leader>v', ':! arara -L pt-BR -v main.tex <cr>')
vim.keymap.set('n', '<leader>z', ':! zathura *.pdf <cr>')

vim.keymap.set('n', 'bb', ':! arara -L pt-BR %:p <cr>')

-- mapeamentos para python
vim.keymap.set('n', '<leader>p', ':! python3 %:p <cr>')

-- limpeza de busca 
vim.keymap.set("n", '<F5>', ':let @/="" <cr>', {noremap = true})

-- parar Lsp
vim.keymap.set("n", '<F6>', ':LspStop <cr>', {noremap = true})

-- verificar ortografia 
vim.keymap.set('n', '<F7>', ':set spell <cr>', {noremap = true})
