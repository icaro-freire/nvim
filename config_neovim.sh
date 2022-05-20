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

# passo 1 ---------------------------------------------------------------------

echo "-- Clonando o repositório"

sleep 2s 

git clone https://github.com/icaro-freire/neovim_config.git 

sleep 2s

echo "Feito 1/7"

sleep 1s

echo ""

# passo 2 ---------------------------------------------------------------------

echo "-- Comentando as linhas 5, 6 e 7 do init.lua"

sed -i '5,7 s/^/--/g' neovim_config/init.lua

sleep 3s

echo "Feito 2/7"

sleep 1s

echo ""

# passo 3 --------------------------------------------------------------------- 

echo "-- Criando uma pasta de configurações em seu diretório HOME"

mkdir -p ~/.config/nvim 

sleep 4s

echo "Feito 3/7"

sleep 1s

echo ""

# passo 4 ---------------------------------------------------------------------

echo "-- Movendo os arquivos necessários para o diretório de configurações" 

mv neovim_config/init.lua neovim_config/lua ~/.config/nvim

sleep 4s

echo "Feito 4/7"  

sleep 2s 

echo ""

# passo 5 ---------------------------------------------------------------------

echo "-- Removendo o já desnecessário diretório neovim_config"

rm neovim_config -rf

sleep 4s

echo "Feito 5/7"

sleep 2s

echo ""

# passo 6 ---------------------------------------------------------------------

echo "-- Será aberto o arquvo init.lua para instalação do Packer"
echo "   Digite :PackerInstall e, depois de concluído, :wq"

sleep 8s 

nvim ~/.config/nvim/init.lua

echo "Feito 6/7"

sleep 2s

echo ""

# passo 7 ---------------------------------------------------------------------

echo "-- Novamente, será aberto o init.lua"
echo "   Dessa vez, retire os comentários das linhas 5, 6 e 7 (basta retirar os traços -- )"
echo "   Depois digite, no modo normal, :wq"

sleep 10s

nvim ~/.config/nvim/init.lua

sleep 2s

echo "Feito 7/7"

sleep 2s 

echo ""

# mensagem final --------------------------------------------------------------

echo "-- Tudo certo!"

sleep 2s

echo "   A instalação das configurações chegou ao FIM"

sleep 1s
