#### Flameshot

> sudo apt install flameshot

Criando atalho personalizado

- Vá para as configurações do sistema e navegue até as configurações do teclado.
- Você encontrará todos os atalhos de teclado listados lá, ignore-os e role até o final. Agora você encontrará um **botão +** .
- Clique no botão “+” para adicionar um atalho personalizado. Você precisa digitar o seguinte nos campos que você recebe:**Nome:**  *Qualquer coisa que você quiser* **Comando:** /usr/bin/flameshot gui
- Finalmente, defina o atalho para **PrtSc** – que irá avisá-lo que a funcionalidade de captura de tela padrão será desativada.

----------------------------------------------------------------------------------------------------------------------------
#### copyQ 


----------------------------------------------------------------------------------------------------------------------------
####  Ver lista de programas instalados

> sudo dpkg -l

#### gravá-los em um arquivo de texto(Facilita a visualização)

> cd ~$ sudo dpkg -l > lista.txt

O último comando acima cria uma lista detalhada de todos os programas instalados.

Para visualizá-los, digite:

> nano lista.txt

#### remover programa

> sudo apt-get remove nome_do_programa

#### Remover programa e configurações

> sudo apt-get purge nome_do_programa

#### Rodar arquivo .sh

entrar na pasta onde se encontra o arquivo e rodar o seguinte comando

> sudo ./nome_do_arquivo.sh

caso de erro de permissão rodar o seguinte comando

> chmod +x filename.sh

> sudo ./nome_do_arquivo.sh

#### descompactar Arquivo .tar.gz

dentro da pasta onde se encontrar o arquivo executar um dos camandos abaixo, conferme extensão.

> tar -xvf nomedoarquivo.tar

> tar -vzxf nomedoarquivo.tar.gz

#### Remover Diretorio

> rm -r nome_do_diretorio
ou
> rmdir nome_do_diretorio

#### Remover arquivo

> rm nome_do_arquivo

#### Comando para quando estiver com o Linux travado

> alt+printSc

> digitar S para salvar cache

> digitar B para fazer o reboot

#### Variavel de Ambiente
> export var NOME_VARIAVEL=/caminho/completo
> export NOME_VARIAVEL=/caminho/completo
> echo NOME_VARIAVEL exibe o valor da variavel de ambiente
> printenv -> exibe todas as variaveis de ambiente registradas

###### Variavel de ambiente para todos os usuario


> sudo nano /etc/bash.bashrc


###### Variavel de ambiente somente para o usuario logado


> sudo nano .bashrc

#### Arquivo de configuração PROFILE
> nano ~/.profile
> nano ~/.bashrc
