#!/usr/bin/env bash

#!/usr/bin/env bash

#listarUsuarios.sh - Extrai usuários do /etc/passwd

#Site: https://borenore.com.br
#Autor: Bruno Luiz
#Manutenção: Bruno Luiz
#--------------------------------------------------------------------------------------------#
#Irá extrar  usuários do /etc/passwd, havendo a possibilidade de colocar em maiúsculo e 
#em ordem alfabética
#
#Exemplo:
#   $ ./listarUsuarios.sh -s -m
#   Neste exemplo ficará em maiúscula e em ordem alfabética 
#----------------------------------------------------------------------------------------------#
#Histórico:
#   
#   v1.1 17/07/2023, Bruno Luiz:
#   -  adicionado -s, -h, -v
#   -  adicionado basename
#   v1.2 17/07/2023. Bruno Luiz:
#   -  case
#   - chave valor
#   v1.3 17/07/2023 Bruno Luiz:
#   - Adicionado while com shift e teste de variável 
#   - Adicionado 2 flags
#----------------------------------------------------------------------------------------------#
#Testadi en:
#   GNU bash, versão 5.0.17(1)-release (x86_64-pc-linux-gnu)
#
#----------------------------------------------------------------------------------------------#

#----------------------------------VARIAVEIS----------------------------------------------------#
USUARIOS="$(cat /etc/passwd | cut -d : -f 1)"
MENSAGEM_USO="
$(basename $0) - [OPÇÕES]

 -h - Menu de ajuda
 -v - Versão
 -s - Ordernar a saída
 -m - Coloca em maiúsculo
"
VERSAO="V1.1"
CHAVE_ORDENA=0
CHAVE_MAIUSCULO=0

#----------------------------------------EXECUÇÃO------------------------------------------------------#
case "$1" in
-h) echo "$MENSAGEM_USO" && exit 0 ;; 
-v) echo "$VERSAO" && exit 0       ;;
-s) CHAVE_ORDENA=1                 ;;
-m) CHAVE_MAIUSCULO=1              ;;
 *) echo "$USUARIOS"               ;;
esac 

[ $CHAVE_ORDENA -eq 1 ]  && echo "$USUARIOS" | sort 
[ $CHAVE_MAIUSCULO -eq 1 ]  && echo "$USUARIOS" | tr [a-z] [A-Z]