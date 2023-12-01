-- fold permanent
vim.cmd([[
  augroup AutoSaveFolds
    autocmd!
    autocmd BufWinLeave *.* mkview
    autocmd BufWinEnter *.* silent loadview
  augroup END
]])

-- numeração
vim.opt.number = true

-- destacar linha corrente
vim.opt.cursorline = true

-- delimitação vertical (80° caractere)
vim.opt.colorcolumn = '80'

-- tabulação
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 0
vim.opt.expandtab = true

-- desabilita criação de swap de arquivos
vim.opt.swapfile = false

-- correção ortográfica 
vim.cmd([[ set nospell ]])
vim.cmd([[ set spelllang=pt_br ]])

-- habilita área de transferância
vim.opt.clipboard = 'unnamedplus'

-- OBS
-- 1. Nem sempre a habilitação para área de transferência está ativa.
--    Caso não esteja funcionando, deve-se instalar um pacote. 
--    Primeiro, devemos verificar qual servidor de exibição possui o 
--    sistema, para depois instalar o pacote correspondente
--    `echo $XDG_SESSION_TYPE`
--       ✓ X11 ⇒ instalar o xclip
--       ✗ X11 ⇒ instalar o wl-clipboard
