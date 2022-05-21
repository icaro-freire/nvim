# Configurações pessoais para o Neovim

> Esse repositório servirá para versionamento de minhas configurações para o Neovim.

## Mais do que um editor ...

O [Neovim](https://neovim.io/) é escrito em [Lua](https://www.lua.org/), tornando-o extramamente rápido, leve e com muitos diferenciais positivos em relação ao clássico editor de textos [Vim](https://www.vim.org/), no qual é baseado. 

:white_check_mark: A possibilidade de não retirar as mão do teclado para edição de textos, foi o que me chamou atenção para esse editor.

## Árvore de diretórios

Esse repositório está organizado assim:

```bash
.config/nvim
├── init.lua
├── lua
│   ├── complete.lua
│   ├── lsp.lua
│   ├── mappings.lua
│   ├── plugins.lua
│   ├── settings.lua
│   └── tabnine.lua
└── README.md
```

## Instalação com script

O _script_ [config_neovim][SCRIPT] fará uma instalação quase automática das configurações deste 
repositório.

> :zap: É necessário ter o [Git][GIT] instalado em seu sistema.

Para executar o _script_, siga os passos:

1. faça o _download_ do ramo onde se encontra o arquivo, por esse link: [:link: config_neovim][ZIP];
2. abra o terminal no diretório onde o arquivo do _download_ foi salvo;
3. execute o seguinte comando:
```
unzip icaro-freire-neovim_config-625ca2e.zip && rm icaro-freire-neovim_config-625ca2e.zip && mv icaro-freire-neovim_config-625ca2e/config_neovim.sh . && rm icaro-freire-neovim_config-625ca2e -rf
```
4. por fim, execute `./config_neovim.sh`

:heavy_exclamation_mark: O conjunto de comandos em "3." faz com que apenas o arquivo  `config_neovim.sh` permaneça em sua máquina, espeficicamente no diretório onde você salvou o arquivo `.zip`:

- `unzip icaro-freire-neovim_config-625ca2e.zip`;  extrai os arquivos num diretório por nome `icaro-freire-neovim_config-252fe30`
- `rm icaro-freire-neovim_config-625ca2e.zip`; deleta o arquivo `.zip`
- `mv icaro-freire-neovim_config-625ca2e/config_neovim.sh .`; move o arquivo `config_neovim.sh` para o diretório onde o arquivo `.zip` foi salvo 
- `rm icaro-freire-neovim_config-625ca2e -rf`; deleta o diretório que foi extraído do arquivo `.zip`

:bangbang: Já o comando "4.", executa o _script_ `config_neovim.sh`.

[SCRIPT]: https://github.com/icaro-freire/neovim_config/blob/config_neovim/config_neovim.sh
[GIT]: https://git-scm.com/
[ZIP]: https://github.com/icaro-freire/neovim_config/zipball/config_neovim

## Uma resalva

Os testes foram realizados em uma distribuição `Pop!_OS LTS 20.04`; numa distribuição `Xububtu 20.04 LTS` e numa distribuição `Debian 11`.

## Créditos 

As configurações de LSP, Autocomplete e Machine Learning foram retiradas do artigo [LSP, Autocomplete e Machine Learning - Neovim com Lua](https://terminalroot.com.br/2021/11/lsp-autocomplete-e-machine-learning-neovim-com-lua.html). 

> :warning: Uma pequena modificação foi necessária, pois um dos _plugins_, a saber, [lspkind](https://github.com/onsails/lspkind.nvim), foi atalizado. 
Portanto, no arquivo [`tabnine.lua`](https://github.com/icaro-freire/neovim_config/blob/main/lua/tabnine.lua), contido no diretório `lua/`, deve-se colocar o comando `mode = 'symbol_text'`, no lugar de `with_text = true` (veja as linhas 79-80).

## Licença 

- Não há garantias! Use por sua conta em risco!
- Você pode fazer o que quiser com essa configuração!

