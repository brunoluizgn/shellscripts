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
#   v1.0 17/07/2023, Bruno Luiz:
#   -  adicionado -s, -h, -v
#   v1.1 17/07/2023. Bruno Luiz:
#   -  adicionado basename
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
"
VERSAO="V1.1"

#----------------------------------------EXECUÇÃO------------------------------------------------------#
case "$1" in
-h) echo "$MENSAGEM_USO" && exit 0     ;; 
-v) echo "$VERSAO" && exit 0           ;;
-s) echo "$USUARIOS"  | sort && exit 0 ;;
 *) echo "$USUARIOS"                   ;;
esac 