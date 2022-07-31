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

# antes de começar ============================================================

# url das configurações -------------------------------------------------------

URL_CONFIG='https://github.com/icaro-freire/neovim_config.git'

# diretórios utilizados -------------------------------------------------------

DIR_NVIM="$HOME/.config/nvim"
DIR_TabNine="$HOME/.config/TabNine"
DIR_LOCAL_NVIM="$HOME/.local/share/nvim"
DIR_LOCAL_TabNine="$HOME/.local/share/TabNine"
DIR_TMP="neovim_config"

# iniciando o script ==========================================================

# passo 0 ---------------------------------------------------------------------

echo "-- Removendo possíveis configurações antigas"

rm  "$DIR_NVIM" "$DIR_TabNine" "$DIR_LOCAL_NVIM" "$DIR_LOCAL_TabNine" -rf

sleep 2s 

echo "Feito 0/8"

sleep 2s

# passo 1 ---------------------------------------------------------------------

echo "-- Clonando o repositório"

sleep 2s 

git clone "$URL_CONFIG" 

sleep 2s

echo "Feito 1/8"

sleep 1s

echo ""

# passo 2 ---------------------------------------------------------------------

echo "-- Comentando as linhas do init.lua"

sed -i '3,13 s/^require/--require/g' "$DIR_TMP/init.lua"

sleep 3s

echo "Feito 2/8"

sleep 1s

echo ""

# passo 3 --------------------------------------------------------------------- 

echo "-- Criando uma pasta de configurações em seu diretório HOME"

mkdir -p "$DIR_NVIM"

sleep 4s

echo "Feito 3/8"

sleep 1s

echo ""

# passo 4 ---------------------------------------------------------------------

echo "-- Movendo os arquivos necessários para o diretório de configurações" 

mv "$DIR_TMP/init.lua" "$DIR_TMP/lua" "$DIR_NVIM"

sleep 4s

echo "Feito 4/8"  

sleep 2s 

echo ""

# passo 5 ---------------------------------------------------------------------

echo "-- Removendo o já desnecessário diretório neovim_config"

rm "$DIR_TMP" -rf

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

echo ""

# passo 7 ---------------------------------------------------------------------

echo "-- Será aberto o arquvo init.lua para instalação do Packer"
echo "   Digite :PackerInstall"
echo "   Após a conclusão, saia do nvim (:q duas vezes)"

sleep 12s 

nvim "$DIR_NVIM/init.lua" 

echo "Feito 7/8"

sleep 2s

echo ""

# passo 8 ---------------------------------------------------------------------

echo "-- Novamente, será aberto o init.lua"
echo "   (uma página web do tabnine será aberta)" 
echo "   (ignore-a e volte ao terminal)"
echo "   Dessa vez, retire os comentários do nome require"
echo "   (basta retirar os traços -- da frente)"
echo "   :5,13 s/^--r/r (faz mais rápido)"
echo "   Depois digite, no modo normal, :wq"

sleep 18s

nvim "$DIR_NVIM/init.lua" 

sleep 2s

echo "Feito 8/8"

sleep 2s 

echo ""

# mensagem final --------------------------------------------------------------

echo "-- Tudo certo!"

sleep 2s

echo "   A instalação das configurações chegou ao FIM"

sleep 1s

# fim do script ===============================================================

exit
