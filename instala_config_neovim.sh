#!/bin/bash

#===========================================================================
# Nome     : instala_config_neovim.sh
#            Copyright (c) 2022 Ícaro Vidal Freire 
#---------------------------------------------------------------------------
# Descrição: Esse script instala minhas configurações para o Neovim. 
# Licença  : The MIT License (MIT)
# Versão   : 0.1.0
#---------------------------------------------------------------------------
# Como usar: Rodar './instala_config_neovim.sh' no terminal
#===========================================================================

# declarações de variáveis =================================================

# url do repositório -------------------------------------------------------

URL_GITHUB='https://github.com/icaro-freire/nvim.git'

# diretórios utilizados ----------------------------------------------------

DIR_CONFIG_NVIM="$HOME/.config/nvim"
DIR_LOCAL_NVIM="$HOME/.local/share/nvim"

DIR_TabNine="$HOME/.config/TabNine"
DIR_LOCAL_TabNine="$HOME/.local/share/TabNine"

DIR_DESTINO="$HOME/.config"

# início do script =========================================================

# passo 0 ------------------------------------------------------------------

echo "##### Removendo possíveis configurações antigas ============================"

rm "$DIR_CONFIG_NVIM" "$DIR_LOCAL_NVIM" "$DIR_TabNine" "$DIR_LOCAL_TabNine" -rf

sleep 2s 

echo "-- Feito (0/5)"

# passo 1 ------------------------------------------------------------------

echo 
echo "##### Clonando o repositório ==============================================="
echo 
git clone "$URL_GITHUB"
echo 
echo "-- Feito (1/5)"

# passo 2 ------------------------------------------------------------------

echo 
echo "##### Comentando as linhas no init.lua ====================================="
echo 
sleep 3s 
cd nvim || { echo "Diretório não encontrado"; exit 1; }
sed -i '3,13 s/^require/--require/g' init.lua
cd .. || exit
echo "-- Feito (2/5)"

# passo 3 ------------------------------------------------------------------

echo 
echo "##### Movendo o diretório para local adequado na HOME ======================"
echo 
sleep 3s
mv nvim "$DIR_DESTINO"
echo "--Feito (3/5)"

# passo 4 ------------------------------------------------------------------

echo 
echo "##### Instalando o Packer =================================================="
echo 
sleep 2s
echo " # clonando o repositório do Packer..."
echo 
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim 
echo 
sleep 2s 
echo " # instalando o Paker..."
echo 
echo "   após a instalação, saia do nvim usando ':q' (por duas vezes)"
sleep 4s 
cd "$DIR_CONFIG_NVIM" || { echo "Diretório não encontrado"; exit 1; }
nvim -c 'PackerInstall' 
echo 
echo "-- Feito (4/5)"

# passo 5 ------------------------------------------------------------------

echo 
echo "##### Ativando os plugins =================================================="
echo 
sleep 2s
sed -i '5,13 s/^--r/r/g' init.lua
echo "-- Feito (5/5)"

# mensagem final -----------------------------------------------------------

echo 
echo "########################################################"
echo " A instalação das configurações do Neovim chegou ao fim "
echo "########################################################"

# término do script ========================================================

exit
