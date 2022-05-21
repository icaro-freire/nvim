#!/usr/bin/env bash

#==============================================================================
# config_neovim.sh 
# Cophyright (c) 2022, Ícaro Vidal Freire
#------------------------------------------------------------------------------
#                   Descrição: Esse script instala minhas configurações 
#                              preferidas para o Neovim.
#                   GitHub   : <https://github.com/icaro-freire/neovim_config>
#                   Licença  : The MIT Licence (MIT) 
#==============================================================================

# passo 0 ---------------------------------------------------------------------

rm -rf ~/.config/nvim ~/.local/share/nvimecho "-- Removendo possíveis configurações antigas"

rm ~/.config/nvim ~/.local/share/nvim -rf

sleep 2s 

echo "Feito 0/8"

sleep 2s

# passo 1 ---------------------------------------------------------------------

echo "-- Clonando o repositório"

sleep 2s 

git clone https://github.com/icaro-freire/neovim_config.git 

sleep 2s

echo "Feito 1/8"

sleep 1s

echo ""

# passo 2 ---------------------------------------------------------------------

echo "-- Comentando as linhas do init.lua"

sed -i 's/^require/--require/g' neovim_config/init.lua

sleep 3s

echo "Feito 2/8"

sleep 1s

echo ""

# passo 3 --------------------------------------------------------------------- 

echo "-- Criando uma pasta de configurações em seu diretório HOME"

mkdir -p ~/.config/nvim 

sleep 4s

echo "Feito 3/8"

sleep 1s

echo ""

# passo 4 ---------------------------------------------------------------------

echo "-- Movendo os arquivos necessários para o diretório de configurações" 

mv neovim_config/init.lua neovim_config/lua ~/.config/nvim

sleep 4s

echo "Feito 4/8"  

sleep 2s 

echo ""

# passo 5 ---------------------------------------------------------------------

echo "-- Removendo o já desnecessário diretório neovim_config"

rm neovim_config -rf

sleep 4s

echo "Feito 5/8"

sleep 2s

echo ""

# passo 6 ---------------------------------------------------------------------

echo "-- Clonando o repositório do Packer (instalador de Plugins)"

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

sleep 4s

echo "Feito 6/8"

# passo 7 ---------------------------------------------------------------------

echo "-- Será aberto o arquvo init.lua para instalação do Packer"
echo "   Digite :PackerInstall e, depois de concluído, saia do nvim (:q duas vezes)"

sleep 8s 

nvim ~/.config/nvim/init.lua

echo "Feito 7/8"

sleep 2s

echo ""

# passo 8 ---------------------------------------------------------------------

echo "-- Novamente, será aberto o init.lua"
echo "   Dessa vez, retire os comentários (basta retirar os traços -- ) do nome require"
echo "   :1,13 s/^--r/r (faz mais rápido)
echo "   Depois digite, no modo normal, :wq"

sleep 12s

nvim ~/.config/nvim/init.lua

sleep 2s

echo "Feito 8/8"

sleep 2s 

echo ""

# mensagem final --------------------------------------------------------------

echo "-- Tudo certo!"

sleep 2s

echo "   A instalação das configurações chegou ao FIM"

sleep 1s
